CREATE TABLE Department (
    DeptId INT NOT NULL PRIMARY KEY,
    DeptCode varchar(5),
    DepartmentName varchar(255)
);

CREATE TABLE Student (
    RollNo int NOT NULL PRIMARY KEY,
    StudentName varchar(255) ,
    Address varchar(255),
    Gender varchar(1),
    Age int,
    DeptartmentId int,
    FOREIGN KEY (DeptartmentId) REFERENCES Department (DeptId)
        ON DELETE CASCADE ON UPDATE CASCADE
);



INSERT INTO Department(DeptId, DeptCode, DepartmentName)
VALUES(1, 'CSE', 'Computer Science & Engineering');
INSERT INTO Department(DeptId, DeptCode, DepartmentName)
VALUES(2, 'MME', 'Metullurgy and Materials Engineering');

INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, DeptartmentId)
VALUES(1, 'Pratik', 'B52', 'M', 29, 1);
INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, DeptartmentId)
VALUES(2, 'Manju', 'B52', 'F', 29, 2);


SELECT *
FROM Student INNER JOIN Department ON Student.DeptartmentId = Department.DeptId

SELECT S.StudentName, S.Age, S.CGPA, D.DeptCode, D.DepartmentName
FROM Student S INNER JOIN Department D ON S.DeptartmentId = D.DeptId
WHERE D.DeptCode = 'CSE'