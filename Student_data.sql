CREATE DATABASE student_performance;
USE student_performance;

CREATE TABLE students (
student_id INT PRIMARY KEY,
name varchar(50),
department varchar(10),
semester INT
);

CREATE TABLE marks (
student_id INT,
subject varchar(30),
marks INT
);

CREATE TABLE attendance (
student_id int,
attendance_percentage INT
);

INSERT into students values
(1,'Sai','ECE',5),
(2,'Teja','ECE',5),
(3,'Ram','ECE',5),
(4,'Laxman','ECE',5),
(5,'Arjun','ECE',5);

insert into marks values
(1,'Signals',72),(1,'Networks',65),(1,'Analog',70),(1,'Digital',68),
(2,'Signals',55),(2,'Networks',60),(2,'Analog',58),(2,'Digital',62),
(3,'Signals',80),(3,'Networks',78),(3,'Analog',75),(3,'Digital',82),
(4,'Signals',45),(4,'Networks',50),(4,'Analog',48),(4,'Digital',52),
(5,'Signals',35),(5,'Networks',40),(5,'Analog',38),(5,'Digital',42);

insert into attendance values
(1,85),(2,78),(3,92),(4,70),(5,65);

select * from students;
select * from marks;
select * from attendance;
UPDATE marks SET subject='Signals & Systems' WHERE subject='Signals' AND student_id IS NOT NULL;
UPDATE marks SET subject='Network Theory' WHERE subject='Networks' AND student_id IS NOT NULL;
UPDATE marks SET subject='Analog Circuits' WHERE subject='Analog' AND student_id IS NOT NULL;
UPDATE marks SET subject='Digital Electronics' WHERE subject='Digital' AND student_id IS NOT NULL;

select distinct subject from marks;

RENAME TABLE marks TO marks_old;

CREATE TABLE marks_subjectwise (
    student_id INT PRIMARY KEY,
    signals INT,
    networks INT,
    analog INT,
    digital INT
);

INSERT INTO marks_subjectwise VALUES
(1,72,65,70,68),
(2,55,60,58,62),
(3,80,78,75,82),
(4,45,50,48,52),
(5,35,40,38,42);

SELECT * FROM marks_subjectwise;
