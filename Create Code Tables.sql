-- Create a new table
CREATE TABLE Leather_Odor_Code (
	code_or_value INT NOT NULL,
	value_description VARCHAR(30) NOT NULL

);

--Query new table
SELECT * FROM Leather_Odor_Code;

--Insert new table
INSERT INTO Leather_Odor_Code (code_or_value, value_description)
	VALUES ('1', 'Mint'),
	('2', 'Flower'),
	('3', 'Leather'),
	('4', 'Apple');

SELECT * FROM Leather_Odor_Code;


--JUST THE INSERTS
--Insert new table
INSERT INTO Leather_Odor_Code (code_or_value, value_description)
	VALUES ('1', 'Mint'),
	('2', 'Flower'),
	('3', 'Leather'),
	('4', 'Apple');

SELECT * FROM Leather_Odor_Code;

--Insert new table
INSERT INTO Natural_Gas_Odor_Code (code_or_value, value_description)
	VALUES ('1', 'Orange'),
	('2', 'Cinnamon'),
	('3', 'Cola'),
	('4', 'Natural Gas');

  --Insert new table
INSERT INTO Marital_Status_Code (code_or_value, value_description)
	VALUES ('1', 'Married'),
	('2', 'Widowed'),
	('3', 'Divorced'),
	('4', 'Separated'),
  ('5', 'Never married'),
  ('6', 'Living with partner')
  ('77', 'Refused')
  ('99', 'Dont Know');

