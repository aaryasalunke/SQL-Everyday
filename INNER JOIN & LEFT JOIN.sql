select * from student;
select * from course;
select * from enrollment;
select * from fee;

------------ INNER JOINS
SELECT * FROM STUDENT S
inner JOIN ENROLLMENT E
ON S.STUDENT_ID=E.STUDENT_ID
INNER JOIN course C
ON E.COURSE_ID=C.COURSE_ID;

------------ Q.1 show the student name and enrollment date for every enrollment
select s.name,e.enroll_date from student s
inner join enrollment e
on s.student_id=e.student_id;

-------------- Q.2
select c.course_name,e.enroll_date from course c
inner join enrollment e
on c.course_id=e.course_id;

-------------- Q.3
select s.name,c.course_name from student s
inner join enrollment e
on s.student_id=e.student_id
inner join course c
on e.course_id=c.course_id;

-------------- Q.4
select e.enroll_id,f.amount_paid from enrollment e
inner join fee f
on e.enroll_id=f.enroll_id;

---------------- Q.5
SELECT s.name,f.amount_paid FROM STUDENT S
INNER JOIN enrollment e
ON s.student_id = e.student_id
inner join fee f
on f.enroll_id = f.enroll_id;

------------ Q.6
SELECT C.course_name,SUM(amount_paid) FROM COURSE C
INNER JOIN enrollment e
ON c.course_id = e.course_id
inner join fee f
on f.enroll_id = f.enroll_id
GROUP BY C.COURSE_NAME;

---------- Q.7
SELECT S.NAME,C.COURSE_NAME,F.AMOUNT_PAID FROM STUDENT S
INNER JOIN ENROLLMENT E
ON S.STUDENT_ID=E.STUDENT_ID
INNER JOIN COURSE C
ON E.COURSE_ID=C.COURSE_ID
INNER JOIN FEE F
ON F.ENROLL_ID = E.ENROLL_ID;

--------- Q.8
SELECT * FROM STUDENT S
LEFT JOIN ENROLLMENT E
ON S.STUDENT_ID=E.STUDENT_ID;

--------- Q.9
SELECT * FROM COURSE C
LEFT JOIN ENROLLMENT E
ON C.COURSE_ID = E.COURSE_ID
LEFT JOIN STUDENT S
ON E.STUDENT_ID = S.STUDENT_ID;

------------ Q.10
SELECT * FROM ENROLLMENT E
LEFT JOIN FEE F
ON F.ENROLL_ID=E.ENROLL_ID;



