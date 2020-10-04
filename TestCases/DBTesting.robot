*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem


Suite Setup     Connect to Database  pymysql    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBHost}   127.0.0.1
${DBName}   test
${DBUser}   root
${DBPass}   root
${DBPort}   3306


*** Test Cases ***
#Create person table
#    ${output}=     Execute SQL String      Create table person(ID integer,FIRST_NAME varchar(10),LAST_NAME varchar(10))
#    log to console  ${output}
#    Should Be Equal As Strings   ${output}  None

#Insert data in person table
#    singl row insert
#    ${output}=     Execute SQL String      Insert into person values(101,"DEVA","THAKUR")
#   Multiple row insert from file
#    ${output}=  Execute SQL Script      ./TestData/Data_to_be_Inserted.sql
#    log to console  ${output}
#    Should Be Equal As Strings   ${output}  None
#Delete Rows from table
#    ${output}=  Execute SQL String      Delete from person where FIRST_NAME="DEVA";
#    log to console  ${output}
#    Should Be Equal As Strings    ${output}   None

Check if Marry is present in database
    Check If Exists In Database      Select * from person where FIRST_NAME="Marry";

Check if Ram is not present in database
    check if not exists in database     Select * from person where FIRST_NAME="Ram";

Check if person table exist in databse
    table must exist   person

Verify ROw count is zero
    row count is 0   Select * from person where FIRST_NAME="xyz";

Verify row count is equal to some value
    row count is equal to x     Select * from person where FIRST_NAME="Marry";    1

Verify row count is greater than some value
    row count is greater than x     Select * from person where FIRST_NAME="Marry";    0

Verify row count is less than some value
    row count is less than x     Select * from person where FIRST_NAME="Marry";    5

Update person table
    ${output}=  Execute SQL String      Update person set FIRST_NAME="Ralph" where LAST_NAME="Cumunda";
    log to console  ${output}
    should be equal as strings      ${output}       None

Retrive records from person table
    @{QueryResults}=     query   Select * from person;
    log to console  many @{QueryResults}
