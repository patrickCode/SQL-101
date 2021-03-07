CREATE TABLE Student (
    RollNo int NOT NULL PRIMARY KEY,
    StudentName varchar(255) ,
    Address varchar(255),
    Gender varchar(1),
    Age int,
    DeptartmentId int,
    CGPA double
);


INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, CGPA)
VALUES(1, 'Ria', 'B52', 'M', 24, 9.2);
INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, CGPA)
VALUES(2, 'Manju', 'B52', 'F', 22, 9.1);
INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, CGPA)
VALUES(3, 'Pratik', 'B52', 'M', 29, 9.68);
INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, CGPA)
VALUES(4, 'Akhil', 'B52', 'M', 31, 7.8);
INSERT INTO Student(RollNo, StudentName, Address, Gender, Age, CGPA)
VALUES(5, 'Anuj', 'B52', 'M', 24, 8.1);

select * from Student
select * from Student where Gender = 'F'
select RollNo, StudentName, Age from Student where Gender = 'F'

select RollNo, StudentName, Age from Student where Age < 25
select RollNo, StudentName, Age, CGPA from Student order by CGPA desc
select RollNo, StudentName, Age, CGPA from Student order by CGPA desc limit 1

SELECT StudentName, Gender, CGPA 
FROM Student
WHERE Gender = 'F' AND (Age > 25 OR CGPA > 9.0)


SELECT StudentName, Gender, CGPA 
FROM Student
WHERE NOT (Age > 25 OR CGPA > 9.0)


SELECT 1
FROM Student
WHERE Gender = 'M' AND CGPA > 9.0
LIMIT 1



SELECT 1
WHERE EXISTS(
    SELECT * 
    FROM STUDENT 
    WHERE Gender = 'M' AND CGPA > 9.0
)



SELECT *
FROM Student
where CGPA >= 8.0 AND CGPA <= 9.0


INSERT INTO Student(RollNumber, StudentName, Address, Gender, Age, CGPA)
VALUES(6, 'Pk Das', null, 'M', 24, 8.8);

SELECT *
FROM Student
where Address IS NULL


SELECT *
FROM Student
where StudentName IN ('Manju Verma', 'Pratik B')


SELECT *
FROM Student
where StudentName LIKE 'A%' || LIKE '%a' || LIKE 'Ria _____'


INSERT INTO Student(RollNumber, StudentName, Address, Gender, Age, CGPA)
VALUES(7, 'Shekhar Gupta', 'N/A', 'M', 26, 9.1);
SELECT *
FROM Student
ORDER BY CGPA DESC, Age DESC

SELECT *
FROM Student
ORDER BY CGPA DESC
LIMIT 9,3