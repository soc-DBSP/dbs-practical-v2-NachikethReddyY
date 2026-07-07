-- CreateTable
CREATE TABLE "staff_dependent" (
    "staff_no" CHAR(4) NOT NULL,
    "dependent_name" VARCHAR(30) NOT NULL,
    "relationship" VARCHAR(20) NOT NULL,

    CONSTRAINT "staff_dependent_pkey" PRIMARY KEY ("staff_no","dependent_name")
);

-- CreateTable
CREATE TABLE "pre_requisite" (
    "mod_code" VARCHAR(10) NOT NULL,
    "requisite" VARCHAR(10) NOT NULL,

    CONSTRAINT "pre_requisite_pkey" PRIMARY KEY ("mod_code","requisite")
);

-- CreateTable
CREATE TABLE "country" (
    "country_name" VARCHAR(30) NOT NULL,
    "language" VARCHAR(30) NOT NULL,
    "region" VARCHAR(30) NOT NULL,

    CONSTRAINT "country_pkey" PRIMARY KEY ("country_name")
);

-- CreateTable
CREATE TABLE "student" (
    "adm_no" CHAR(4) NOT NULL,
    "stud_name" VARCHAR(30),
    "gender" CHAR(1),
    "address" VARCHAR(100),
    "mobile_phone" CHAR(8),
    "home_phone" CHAR(8),
    "dob" DATE,
    "nationality" VARCHAR(30),
    "crse_code" VARCHAR(5),

    CONSTRAINT "student_pkey" PRIMARY KEY ("adm_no")
);

-- CreateTable
CREATE TABLE "stud_mod_performance" (
    "adm_no" CHAR(4) NOT NULL,
    "mod_registered" VARCHAR(10) NOT NULL,
    "mark" INTEGER,
    "grade" CHAR(2),

    CONSTRAINT "stud_mod_performance_pkey" PRIMARY KEY ("adm_no","mod_registered")
);

-- AddForeignKey
ALTER TABLE "staff_dependent" ADD CONSTRAINT "staff_dependent_staff_no_fk" FOREIGN KEY ("staff_no") REFERENCES "staff"("staff_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
