Project 2: ETL Challenge

Briana Friendt, Haley Huhtala, Ian Mac Moore and Kaylene Retka

For our project we are using data from the CDC - National Health and Examination Health Survey (2013-2014). We started by exploring the data and determining which of the data sets we wanted to use. Several CSV files were available from the survey data. We selected the demographic data set and examination data set. This project will create a data set 

The columns in each data set had variable names. We started our project by creating a variable database for column names. This allowed us to determine which columns we wanted to keep in our final database. 

EXTRACT: The CSV files were loaded. Copies are in the Resources folder
1. demographics.csv
2. examination.csv

TRANSFORM:
1. Demographics 
- Filter data to narrow down focus (Xray results, oral health)
- Rename columns (variable name to descriptor)
2. Examination
- Filter data to narrow down data focus (CA data and census data)
- Rename columns (variable name to descriptor) 


LOAD: PostgreSQL

