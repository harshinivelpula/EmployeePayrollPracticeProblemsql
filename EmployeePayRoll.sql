--UC1_create a payroll service database
create DATABASE Payroll_Services;
USE Payroll_Services;
--UC2_create a employee payroll table in payroll_services database
create TABLE Employee_payroll(
Id int PRIMARY KEY IDENTITY(1,1),
Name varchar(30) NOT NULL,
Salary BIGINT NOT NULL,
Start DATE NOT NULL);
--UC3_create employee payroll data
INSERT INTO Employee_payroll(Name, Salary, Start)VALUES('Charu','40000','4/01/2023'),('Chocky','50000','3/01/2022'),
('Kavitha','60000','8/01/2021');
--UC4_Retrive employee payroll data
SELECT * FROM Employee_payroll;
--UC5_
SELECT Salary FROM Employee_payroll WHERE Name = 'Kavitha'
SELECT * FROM Employee_payroll WHERE Start BETWEEN CAST('8/01/2021' AS DATE) AND GETDATE();
--UC6_
ALTER TABLE Employee_payroll ADD Gender varchar(6);
UPDATE Employee_payroll SET Gender = 'F' WHERE  Name='Kavitha';
UPDATE Employee_payroll SET Gender = 'M' WHERE  Name='Charu';
UPDATE Employee_payroll SET Gender = 'F' WHERE  Name='Chocky';
--UC7_use of Database functions with GroupBy
Select SUM(Salary) From Employee_payroll Where Gender='M' Group by Gender;
Select SUM(Salary) From Employee_payroll Where Gender='F' Group by Gender;
Select AVG(Salary) From Employee_payroll Where Gender='M' Group by Gender;
Select AVG(Salary) From Employee_payroll Where Gender='F' Group by Gender;
Select MIN(Salary) From Employee_payroll Where Gender='M' Group by Gender;
Select MIN(Salary) From Employee_payroll Where Gender='F' Group by Gender;
Select MAX(Salary) From Employee_payroll Where Gender='M' Group by Gender;
Select MAX(Salary) From Employee_payroll Where Gender='F' Group by Gender;
Select COUNT(Salary) From Employee_payroll Where Gender='M' Group by Gender;
Select COUNT(Salary) From Employee_payroll Where Gender='F' Group by Gender;
--UC8_extend employee_payroll data and save other details
ALTER TABLE Employee_payroll ADD Phone varchar(16);
ALTER TABLE Employee_payroll ADD Address varchar(32) NOT NULL DEFAULT 'CHEANNAI';
ALTER TABLE Employee_payroll ADD Department varchar(16) NOT NULL DEFAULT 'ENGINEER';
--UC9_extend employee_payroll table
ALTER TABLE Employee_payroll ADD BasicPay Float Not Null DEFAULT 0, 
Deductions Float Not Null DEFAULT 0, TaxablePay Float Not Null DEFAULT 0,
IncomeTax Float Not Null DEFAULT 0, NetPay Float Not Null DEFAULT 0;
--UC10_
UPDATE Employee_payroll SET BasicPay=30000 WHERE Name='Chocky';
UPDATE Employee_payroll SET BasicPay=40000 WHERE Name='Charu';
UPDATE Employee_payroll SET BasicPay=60000 WHERE Name='Kavitha';
UPDATE Employee_payroll SET Phone=8264367525 ,Address='Warangl', Department='HOD',Deductions=1000,TaxablePay=2000,IncomeTax=3000,NetPay=30000 WHERE Name='Charu';
UPDATE Employee_payroll SET Phone=8276356289 ,Address='Coorg', Department='DEO',Deductions=4000,TaxablePay=5000,IncomeTax=6000,NetPay=40000 WHERE Name='Chocky';
UPDATE Employee_payroll SET Phone=9286266267 ,Address='Hyderabd', Department='PS',Deductions=7000,TaxablePay=8000,IncomeTax=9000,NetPay=50000 WHERE Name='Kavitha';
UPDATE Employee_payroll SET Name = 'Varhsa' WHERE Name = 'Kavitha'
CREATE TABLE Demo_Table(Id int PRIMARY KEY IDENTITY(1,1));
--UC11_delete entire table
DROP TABLE Demo_Table;
--UC12_delete a row
DELETE FROM Employee_payroll WHERE Id=3;
--CURD
--C=CREATE
--U=UPDATE
--R=RETRIVE
--D=DELETE

create TABLE Employee1(
Id int PRIMARY KEY IDENTITY(1,1),
Name varchar(30) NOT NULL,
Salary BIGINT NOT NULL,
Start DATE NOT NULL);



