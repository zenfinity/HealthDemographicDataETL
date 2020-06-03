-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EijzNj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Examination" (
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
    CONSTRAINT "pk_Examination" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "Demographics" (
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
    CONSTRAINT "pk_Demographics" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "Health_Study" (
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
    CONSTRAINT "pk_Health_Study" PRIMARY KEY (
        "SEQN"
     )
);

CREATE TABLE "Leather_Odor_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Leather_Odor_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "Natural_Gas_Odor_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Natural_Gas_Odor_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "US_Citizen_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_US_Citizen_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "Marital_Status_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Marital_Status_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "Years_In_US_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Years_In_US_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "Income_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Income_Code" PRIMARY KEY (
        "code_or_value"
     )
);

CREATE TABLE "Race_Code" (
    "code_or_value" INTEGER   NOT NULL,
    "value_description" VARCHAR   NOT NULL,
    "count" INTEGER   NOT NULL,
    "cumulative" INTEGER   NOT NULL,
    CONSTRAINT "pk_Race_Code" PRIMARY KEY (
        "code_or_value"
     )
);

ALTER TABLE "Examination" ADD CONSTRAINT "fk_Examination_Leather_Odor" FOREIGN KEY("Leather_Odor")
REFERENCES "Leather_Odor_Code" ("code_or_value");

ALTER TABLE "Examination" ADD CONSTRAINT "fk_Examination_Natural_Gas_Odor" FOREIGN KEY("Natural_Gas_Odor")
REFERENCES "Natural_Gas_Odor_Code" ("code_or_value");

ALTER TABLE "Demographics" ADD CONSTRAINT "fk_Demographics_Race" FOREIGN KEY("Race")
REFERENCES "Race_Code" ("code_or_value");

ALTER TABLE "Demographics" ADD CONSTRAINT "fk_Demographics_US_Citizen" FOREIGN KEY("US_Citizen")
REFERENCES "US_Citizen_Code" ("code_or_value");

ALTER TABLE "Demographics" ADD CONSTRAINT "fk_Demographics_Years_In_US" FOREIGN KEY("Years_In_US")
REFERENCES "Years_In_US_Code" ("code_or_value");

ALTER TABLE "Demographics" ADD CONSTRAINT "fk_Demographics_Marital_Status" FOREIGN KEY("Marital_Status")
REFERENCES "Marital_Status_Code" ("code_or_value");

ALTER TABLE "Demographics" ADD CONSTRAINT "fk_Demographics_Income" FOREIGN KEY("Income")
REFERENCES "Income_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Leather_Odor" FOREIGN KEY("Leather_Odor")
REFERENCES "Leather_Odor_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Natural_Gas_Odor" FOREIGN KEY("Natural_Gas_Odor")
REFERENCES "Natural_Gas_Odor_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Race" FOREIGN KEY("Race")
REFERENCES "Race_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_US_Citizen" FOREIGN KEY("US_Citizen")
REFERENCES "US_Citizen_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Years_In_US" FOREIGN KEY("Years_In_US")
REFERENCES "Years_In_US_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Marital_Status" FOREIGN KEY("Marital_Status")
REFERENCES "Marital_Status_Code" ("code_or_value");

ALTER TABLE "Health_Study" ADD CONSTRAINT "fk_Health_Study_Income" FOREIGN KEY("Income")
REFERENCES "Income_Code" ("code_or_value");

