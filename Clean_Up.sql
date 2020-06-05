SELECT d."SEQN",e."BP_Systolic_mmHg",e."BP_Diastolic_mmHg",e."Weight_kg",e."Height_cm",e."BMI_kg_m2",e."Dominate_Hand",e."Grip_Strength_H2_kg",e."Grip_Strength_H1_kg",e."Leather_Odor",e."Natural_Gas_Odor",d."Gender",
d."Age",d."Race",d."US_Citizen",d."Years_In_US",d."Marital_Status",d."Pregnant",d."Num_Family",d."Interview_Weight",d."Exam_Weight",d."Income"
INTO TEMP TABLE combined
FROM demographics AS d
JOIN examination AS e
ON d."SEQN"=e."SEQN";

SELECT * FROM combined;

SELECT *
FROM combined
WHERE combined IS NOT null;

INSERT INTO health_study
SELECT "SEQN","BP_Systolic_mmHg","BP_Diastolic_mmHg","Weight_kg","Height_cm","BMI_kg_m2","Dominate_Hand","Grip_Strength_H2_kg","Grip_Strength_H1_kg","Leather_Odor","Natural_Gas_Odor","Gender",
"Age","Race","US_Citizen","Years_In_US","Marital_Status","Pregnant","Num_Family","Interview_Weight","Exam_Weight","Income"
FROM combined
WHERE combined IS NOT null;

SELECT * FROM health_study;

DROP TABLE demographics;

DROP TABLE examination;