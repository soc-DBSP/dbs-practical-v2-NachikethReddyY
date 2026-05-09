-- Section B: Function used by Report > Generate Module Performance.
-- Aggregates stud_mod_performance by module + grade and counts grade
-- occurrences. Ordered by module, grade, then count to match the spec.
CREATE OR REPLACE FUNCTION get_modules_performance()
RETURNS TABLE (
    mod_registered VARCHAR(10),
    grade CHAR(2),
    grade_count BIGINT
) AS
$$
BEGIN
    RETURN QUERY
    SELECT
        smp.mod_registered,
        smp.grade,
        COUNT(smp.grade) AS grade_count
    FROM stud_mod_performance AS smp
    WHERE smp.grade IS NOT NULL
    GROUP BY smp.mod_registered, smp.grade
    ORDER BY smp.mod_registered, smp.grade, COUNT(smp.grade);
END;
$$
LANGUAGE plpgsql;
