CREATE DATABASE consultation;

USE consultation;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Description VARCHAR(255),
    DepartmentNo INT,
    Location VARCHAR(100),
    Budget DECIMAL(15,2),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    CreationDate DATE
);

INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (1, 'HR', 'HR Department', 101, 'Ernakulam', 50000.00, '9087594567', 'hr@example.com', '2023-09-13');
INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (2, 'Orthopedics', 'Orthopaedic Department', 102, 'Kochi', 100000, '7887594560', 'ortho@example.com', '2022-07-18');
INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (3, 'Radiology', 'Radiology Department', 103, 'Kottayam', 500000, '6887594560', 'radiology@example.com', '2022-09-4');
INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (4, 'Surgery', 'General Surgery Department', 104, 'Alappuzha', 500000, '6667594567', 'sugery@gmail.com', '2023-07-1');
INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (5, 'Pathology', 'Pathology Department', 105, 'Kochi', 500000, '8987590940', 'pathology@gmail.com.com', '2023-01-15');
INSERT INTO Department (DepartmentID, DepartmentName, Description, DepartmentNo, Location, Budget, Phone, Email, CreationDate)
VALUES (6, 'Nephrology', 'Nephrology Department', 106, 'Kottayam', 800000, '9987594346', 'nephrology@gmail.com', '2021-05-24');

SELECT * FROM Department;


UPDATE Department
SET Description = 'Human Resources Department',
    DepartmentName = 'HR Department',
    DepartmentNo = 105,
    Location = 'Kannur',
    Budget = 95000,
    Phone = '2275-987-6543',
    Email = 'newhr@example.com',
    CreationDate = '2023-09-14'
WHERE DepartmentID = 1;

UPDATE Department
SET Email = 'hr@gmail.com'
WHERE DepartmentID = 1;

SELECT DepartmentName, Location, Budget
FROM Department
WHERE DepartmentID > 2;

SELECT DepartmentNo, Phone
FROM Department;

DELETE FROM Department
WHERE DepartmentID = 1;

UPDATE Department
SET Email = 'ortho@gmail.com' 
WHERE DepartmentID=2;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(40),
    DOB DATE,
    Gender VARCHAR(10),
    HireDate DATE,
    DepartmentID INT,
    Role VARCHAR(15),
    Salary DECIMAL(10,2),
    Experience INT,
	FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

 SELECT *FROM Employee;

DROP TABLE Employee;


INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,Phone,Address,DOB,Gender,HireDate,DepartmentID,Role,Salary,Experience)
VALUES (1,'Dona','S','arya@gmail.com','9876543210','Kochi','03-09-1999','Female','10-11-2022',3,'Manager',100000,3);
INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,Phone,Address,DOB,Gender,HireDate,DepartmentID,Role,Salary,Experience)
VALUES (2,'Amaka','S','amaka@gmail.com','9876543210','Kottayam','03-09-2000','Female','10-11-2022',3,'Receptionist',100000,3);
INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,Phone,Address,DOB,Gender,HireDate,DepartmentID,Role,Salary,Experience)
VALUES (3,'Dona','S','arya@gmail.com','9876543210','Kochi','03-09-1999','Female','10-11-2022',3,'Manager',100000,3);
INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,Phone,Address,DOB,Gender,HireDate,DepartmentID,Role,Salary,Experience)
VALUES (4,'Dona','S','arya@gmail.com','9876543210','Kochi','03-09-1999','Female','10-11-2022',3,'Manager',100000,3);




CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Specialization VARCHAR(100),
    LicenseNumber VARCHAR(20),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Address VARCHAR(255),
    JoiningDate DATE,
	Experience INT
	FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Registration (
    RegistrationID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	DateOfBirth DATE,
	Age INT,
	Phone VARCHAR(15),
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Address VARCHAR(255),
    State VARCHAR(15),
	City VARCHAR(15),
	Username VARCHAR(15),
	Password VARCHAR(15)  
);


CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Address VARCHAR(255),
	State VARCHAR(15),
	City VARCHAR(15),
    FOREIGN KEY (RegistrationID) REFERENCES Registration(RegistrationID)
);


CREATE TABLE Consultation (
    ConsultationID INT PRIMARY KEY,
    ConsultDate DATETIME,
    Duration INT,
    ConsultType VARCHAR(50),
    ConsultationNotes TEXT,
	FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);











