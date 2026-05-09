-- Section C: GPA columns, grade-point mapping, and batch GPA calculation.

-- 1. Schema: store gpa per student.
ALTER TABLE student
    ADD COLUMN IF NOT EXISTS gpa NUMERIC(4, 2),
    ADD COLUMN IF NOT EXISTS gpa_last_updated DATE;

-- 2. Map a CHAR(2) grade to its grade point. TRIM handles CHAR padding so
-- one-letter grades like 'A' compare correctly.
CREATE OR REPLACE FUNCTION get_grade_point(grade_input CHAR(2))
RETURNS NUMERIC
AS $$
DECLARE
    g TEXT;
    grade_point NUMERIC;
BEGIN
    g := TRIM(grade_input::TEXT);
    grade_point := CASE g
        WHEN 'AD' THEN 4.0
        WHEN 'A' THEN 4.0
        WHEN 'B+' THEN 3.5
        WHEN 'B' THEN 3.0
        WHEN 'C+' THEN 2.5
        WHEN 'C' THEN 2.0
        WHEN 'D+' THEN 1.5
        WHEN 'D' THEN 1.0
        WHEN 'F' THEN 0.0
        ELSE NULL
    END;
    IF grade_point IS NULL THEN
        RAISE EXCEPTION 'Invalid Grade: %', g;
    END IF;
    RETURN grade_point;
END;
$$ LANGUAGE plpgsql;

-- 3. Loop through every student that has performance rows; for each one
-- accumulate weighted grade points and credits across their modules, then
-- update the student row with the resulting gpa.
CREATE OR REPLACE PROCEDURE calculate_students_gpa()
LANGUAGE plpgsql
AS $$
DECLARE
    v_adm_no CHAR(4);
    v_mod_performance RECORD;
    total_credit_units INT;
    total_weighted_grade_points NUMERIC;
    computed_gpa NUMERIC;
BEGIN
    FOR v_adm_no IN
        SELECT DISTINCT smp.adm_no
        FROM stud_mod_performance smp
    LOOP
        total_credit_units := 0;
        total_weighted_grade_points := 0;

        FOR v_mod_performance IN
            SELECT smp.grade, m.credit_unit
            FROM stud_mod_performance smp
            INNER JOIN module m ON m.mod_code = smp.mod_registered
            WHERE smp.adm_no = v_adm_no
              AND smp.grade IS NOT NULL
        LOOP
            total_credit_units := total_credit_units + v_mod_performance.credit_unit;
            total_weighted_grade_points := total_weighted_grade_points
                + (get_grade_point(v_mod_performance.grade::CHAR(2)) * v_mod_performance.credit_unit);
        END LOOP;

        IF total_credit_units > 0 THEN
            computed_gpa := total_weighted_grade_points / total_credit_units;
            UPDATE student
            SET gpa = computed_gpa,
                gpa_last_updated = CURRENT_DATE
            WHERE adm_no = v_adm_no;
        END IF;
    END LOOP;
END;
$$;
