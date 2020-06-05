-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EijzNj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "examination" (
    "SEQN" INT   NOT NULL,
    "BP_Systolic_mmHg" INT,
    "BP_Diastolic_mmHg" INT,
    "Weight_kg" DECIMAL,
    "Height_cm" DECIMAL,
    "BMI_kg_m2" DECIMAL,
    "Dominate_Hand" VARCHAR,
    "Grip_Strength_H2_kg" DECIMAL,
    "Grip_Strength_H1_kg" DECIMAL,
    "Leather_Odor" INT,
    "Natural_Gas_Odor" INT,
    CONSTRAINT "pk_examination" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "demographics" (
    "SEQN" INT   NOT NULL,
    "Gender" VARCHAR(255),
    "Age" INT,
    "Race" INT,
    "US_Citizen" INT,
    "Years_In_US" INT,
    "Marital_Status" INT,
    "Pregnant" VARCHAR,
    "Num_Family" INT,
    "Interview_Weight" DECIMAL,
    "Exam_Weight" DECIMAL,
    "Income" INT,
    CONSTRAINT "pk_demographics" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "health_study" (
    "SEQN" INT   NOT NULL,
    "BP_Systolic_mmHg" INT,
    "BP_Diastolic_mmHg" INT,
    "Weight_kg" DECIMAL,
    "Height_cm" DECIMAL,
    "BMI_kg_m2" DECIMAL,
    "Dominate_Hand" VARCHAR,
    "Grip_Strength_H2_kg" DECIMAL,
    "Grip_Strength_H1_kg" DECIMAL,
    "Leather_Odor" INT,
    "Natural_Gas_Odor" INT,
    "Gender" VARCHAR(255),
    "Age" INT,
    "Race" INT,
    "US_Citizen" INT,
    "Years_In_US" INT,
    "Marital_Status" INT,
    "Pregnant" VARCHAR,
    "Num_Family" INT,
    "Interview_Weight" DECIMAL,
    "Exam_Weight" DECIMAL,
    "Income" INT,
    CONSTRAINT "pk_health_study" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "leather_odor_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_leather_odor_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "natural_gas_odor_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_natural_gas_odor_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "us_citizen_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_us_citizen_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "marital_status_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_marital_status_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "years_in_us_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_years_in_us_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "income_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_income_code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "race_code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_race_code" PRIMARY KEY (
        "code_or_value"
     )
);

ALTER TABLE "examination" ADD CONSTRAINT "fk_examination_Leather_Odor" FOREIGN KEY("Leather_Odor")
REFERENCES "leather_odor_code" ("code_or_value");

ALTER TABLE "examination" ADD CONSTRAINT "fk_examination_Natural_Gas_Odor" FOREIGN KEY("Natural_Gas_Odor")
REFERENCES "natural_gas_odor_code" ("code_or_value");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_Race" FOREIGN KEY("Race")
REFERENCES "race_code" ("code_or_value");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_US_Citizen" FOREIGN KEY("US_Citizen")
REFERENCES "us_citizen_code" ("code_or_value");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_Years_In_US" FOREIGN KEY("Years_In_US")
REFERENCES "years_in_us_code" ("code_or_value");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_Marital_Status" FOREIGN KEY("Marital_Status")
REFERENCES "marital_status_code" ("code_or_value");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_Income" FOREIGN KEY("Income")
REFERENCES "income_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Leather_Odor" FOREIGN KEY("Leather_Odor")
REFERENCES "leather_odor_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Natural_Gas_Odor" FOREIGN KEY("Natural_Gas_Odor")
REFERENCES "natural_gas_odor_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Race" FOREIGN KEY("Race")
REFERENCES "race_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_US_Citizen" FOREIGN KEY("US_Citizen")
REFERENCES "us_citizen_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Years_In_US" FOREIGN KEY("Years_In_US")
REFERENCES "years_in_us_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Marital_Status" FOREIGN KEY("Marital_Status")
REFERENCES "marital_status_code" ("code_or_value");

ALTER TABLE "health_study" ADD CONSTRAINT "fk_health_study_Income" FOREIGN KEY("Income")
REFERENCES "income_code" ("code_or_value");

--JUST THE INSERTS
--Insert new table
INSERT INTO leather_odor_code (code_or_value, value_description)
	VALUES (1, 'Mint'),
	(2, 'Flower'),
	(3, 'Leather'),
	(4, 'Apple');
--Insert new table
INSERT INTO natural_gas_odor_code (code_or_value, value_description)
VALUES (1, 'Orange'),
	(2, 'Cinnamon'),
	(3, 'Cola'),
	(4, 'Natural Gas');
--Insert new table
INSERT INTO marital_status_code (code_or_value, value_description)
	VALUES (1, 'Married'),
	(2, 'Widowed'),
	(3, 'Divorced'),
	(4, 'Separated'),
	(5, 'Never married'),
	(6, 'Living with partner'),
	(77, 'Refused'),
	(99, 'Dont Know');
--Insert new table
INSERT INTO years_in_us_code (code_or_value, value_description)
	VALUES (1, 'Less than 1'),
	(2, '1 - 5'),
	(3, '5 - 10'),
	(4, '10 - 15'),
	(5, '15 - 20'),
	(6, '20 - 30'),
	(7, '30 - 40'),
	(8, '40 - 50'),
	(9, '50 or more'),
	(77, 'Refused'),
	(99, 'Dont Know');
--Insert new table
INSERT INTO income_code (code_or_value, value_description)
	VALUES (1, '$ 0 to $ 4,999'),
	(2, '$ 5,000 to $ 9,999'),
	(3, '$10,000 to $14,999'),
	(4, '$15,000 to $19,999'),
	(5, '$20,000 to $24,999'),
	(6, '$25,000 to $34,999'),
	(7, '$35,000 to $44,999'),
	(8, '$45,000 to $54,999'),
	(9, '$55,000 to $64,999'),
	(10, '$65,000 to $74,999'),
	(12, '$20,000 and Over'),
	(13, '$75,000 to $99,999'),
	(14, '$75,000 to $99,999'),
	(15, '$100,000 and Over'),
	(77, 'Refused'),
	(99, 'Dont Know');  
  --Insert new table
INSERT INTO race_code (code_or_value, value_description)
	VALUES (1, 'Mexican American'),
	(2, 'Other Hispanic'),
	(3, 'Non-Hispanic White'),
	(4, 'Non-Hispanic Black'),
	(6, 'Non-Hispanic Asian'),
	(7, 'Other Race - Including Multi-Racial');
  --Insert new table
INSERT INTO us_citizen_code (code_or_value, value_description)
	VALUES (1, 'Citizen by birth or naturalization'),
	(2, 'Not a citizen'),
	(7, 'Refused'),
	(9, 'Dont Know');