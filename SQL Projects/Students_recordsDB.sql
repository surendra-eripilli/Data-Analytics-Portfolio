create database Students_Records;
use Students_Records;
create table students(
     student_id int primary key, 
     student_name varchar(30) not null,
     contact varchar(15),
     enrolled_date date,
     email varchar(50) unique
     );
insert into students(student_id, student_name, contact, enrolled_date, email) values(
     101, 'Rahul Sharma', '9876543210', '2023-01-15', 'rahul.sharma@gmail.com'),(
     102, 'Anita Verma', '9876501234', '2023-02-10', 'anita.verma@gmail.com'),(
     103, 'Suresh Kumar', '9988776655', '2023-03-05', 'suresh.kumar@gmail.com'),(
     104, 'Priya Rao', '9876123450', '2023-04-18', 'priya.rao@gmail.com'),(
     105, 'Vikram Singh', '9856473821', '2023-05-20', 'vikram.singh@gmail.com'),(
     106, 'Karan Mehta', '9845123098', '2023-06-01', 'karan.mehta@gmail.com'),(
     107, 'Ritika Jain', '9876001122', '2023-06-15', 'ritika.jain@gmail.com'),(
     109, 'Swathi Reddy', '9877098543', '2023-08-12', 'swathi.reddy@gmail.com'),(
     110, 'Neha Kapoor', '9922334455', '2023-09-01', 'neha.kapoor@gmail.com'),(
     111, 'Manoj Joshi', '9898765432', '2023-09-28', 'manoj.joshi@gmail.com'),(
     112, 'Harini Iyer', '9844332211', '2023-10-10', 'harini.iyer@gmail.com'),(
     113, 'Aditya Nair', '9811998877', '2023-10-25', 'aditya.nair@gmail.com'),(
     114, 'Shruti Mishra', '9877665544', '2023-11-05', 'shruti.mishra@gmail.com'),(
     115, 'Rohit Kulkarni', '9823445566', '2023-11-20', 'rohit.kulkarni@gmail.com'),(
     116, 'Deepa Menon', '9798654321', '2023-12-01', 'deepa.menon@gmail.com'),(
     117, 'Yashwanth Rao', '9699554433', '2023-12-12', 'yashwanth.rao@gmail.com'),(
     118, 'Sana Khan', '9855123478', '2024-01-05', 'sana.khan@gmail.com'),(
     119, 'Arjun Malhotra', '9877889900', '2024-01-20', 'arjun.malhotra@gmail.com'),(
     120, 'Lavanya Devi', '9811223344', '2024-02-02', 'lavanya.devi@gmail.com'),(
     121, 'Tarun Gupta', '9877012345', '2024-02-18', 'tarun.gupta@gmail.com'),(
     122, 'Anjali Sen', '9845781230', '2024-03-01', 'anjali.sen@gmail.com'),(
     123, 'Mahesh Babu', '9876549900', '2024-03-14', 'mahesh.babu@gmail.com'),(
     124, 'Kavya Soni', '9911223344', '2024-03-28', 'kavya.soni@gmail.com'),(
     125, 'Nikhil Desai', '9933445566', '2024-04-05', 'nikhil.desai@gmail.com'),(
     126, 'Pooja Chatterjee', '9844001122', '2024-04-19', 'pooja.chatterjee@gmail.com'),(
	 127, 'Siddharth Jain', '9822998877', '2024-05-01', 'siddharth.jain@gmail.com'),(
     128, 'Meera Krishnan', '9877554433', '2024-05-12', 'meera.krishnan@example.com'),(
	 129, 'Harsh Vardhan', '9799776655', '2024-05-25', 'harsh.vardhan@gmail.com'),(
	 130, 'Divya Kaur', '9811002233', '2024-06-02', 'divya.kaur@gmail.com');
select *from students;
create table courses(
     course_id int primary key,
     course_name varchar(20) not null,
     duration varchar(10),
     course_details varchar(30)
     );
insert into courses(course_id, course_name, duration, course_details) values(
     1001, 'Java Basics', '45 days', 'Intro to Java'),(
     1002, 'MySQL', '30 days', 'DB fundamentals'),(
     1003, 'Python Core', '2 months', 'Core Python'),(
	 1004, 'Web Dev', '3 months', 'HTML CSS JS'),(
     1005, 'C Programming', '40 days', 'Basics of C'),(
     1006, 'Data Science', '4 months', 'ML & Stats'),(
     1007, 'AWS Cloud', '2 months', 'AWS Essentials'),(
     1008, 'Excel Mastery', '20 days', 'Adv Excel'),(
     1009, 'Cyber Security', '3 months', 'Security basics'),(
     1010, 'AI Basics', '1 month', 'Intro to AI');
select *from courses;
create table enrollments(
     enrollment_id int primary key,
     student_id int,
     course_id int,
     enrollment_date date,
     statuses enum('Active', 'Completed', 'Pending', 'Dropped'),
     foreign key(student_id) references students(student_id),
     foreign key(course_id) references courses(course_id)
     );
insert into enrollments(enrollment_id, student_id, course_id, enrollment_date, statuses) values(
     1, 118, 1004, '2024-01-14', 'Active'),(
     2, 105, 1001, '2023-05-22', 'Completed'),(
     3, 130, 1009, '2024-06-04', 'Pending'),(
     4, 113, 1006, '2023-10-28', 'Active'),(
     5, 101, 1007, '2023-02-18', 'Active'),(
     6, 102, 1008, '2023-02-12', 'Completed'),(
     7, 121, 1003, '2024-02-22', 'Active'),(
     8, 109, 1007, '2023-08-15', 'Completed'),(
     9, 122, 1006, '2024-03-05', 'Completed'),(
     10, 115, 1005, '2023-11-25', 'Dropped'),(
     11, 124, 1008, '2024-03-02', 'Active'),(
     12, 119, 1006, '2024-01-25', 'Active'),(
     13, 117, 1008, '2023-12-18', 'Completed'),(
     14, 128, 1010, '2024-05-15', 'Completed'),(
     15, 101, 1009, '2023-03-22', 'Completed'),(
     16, 114, 1009, '2023-11-10', 'Pending'),(
     17, 130, 1001, '2024-06-01', 'Active'),(
     18, 106, 1007, '2023-06-07', 'Pending'),(
	 19, 125, 1004, '2024-04-09', 'Active'),(
     20, 112, 1005, '2023-10-11', 'Completed'),(
     21, 110, 1003, '2023-09-10', 'Active'),(
     22, 124, 1003, '2024-03-22', 'Pending'),(
     23, 116, 1010, '2023-12-05', 'Active'),(
	 24, 103, 1006, '2023-03-12', 'Completed'),(
     25, 117, 1010, '2024-01-10', 'Active'),(
     26, 108, 1002, '2023-08-13', 'Completed'),(
     27, 120, 1004, '2024-02-05', 'Pending'),(
     28, 111, 1007, '2023-09-29', 'Completed'),(
     29, 117, 1002, '2023-12-20', 'Dropped'),(
     30, 126, 1001, '2024-04-23', 'Completed'),(
     31, 101, 1003, '2023-01-20', 'Completed'),(
     32, 122, 1008, '2024-03-20', 'Pending'),(
     33, 104, 1002, '2023-04-20', 'Completed'),(
     34, 105, 1007, '2023-06-01', 'Pending'),(
     35, 130, 1004, '2024-06-03', 'Completed'),(
     36, 109, 1005, '2023-08-20', 'Active'),(
     37, 120, 1009, '2024-02-15', 'Completed'),(
     38, 118, 1001, '2024-01-10', 'Dropped'),(
     39, 113, 1002, '2023-10-05', 'Completed'),(
     40, 121, 1010, '2024-02-28', 'Active'),(
     41, 129, 1008, '2024-05-30', 'Completed'),(
     42, 107, 1010, '2023-06-20', 'Active'),(
     43, 123, 1001, '2024-03-18', 'Active'),(
     44, 125, 1006, '2024-04-15', 'Dropped'),(
     45, 109, 1010, '2023-09-01', 'Completed'),(
     46, 111, 1001, '2023-09-25', 'Completed'),(
     47, 102, 1006, '2023-02-18', 'Pending'),(
     48, 128, 1003, '2024-05-10', 'Active'),(
     49, 103, 1008, '2023-03-20', 'Completed'),(
     50, 112, 1009, '2023-10-14', 'Active');
select *from enrollments;
create table grades(
     grade_id int primary key,
     enrollment_id int,
     score decimal(4,1),
     grade enum('A', 'B', 'C', 'D', 'E', 'F'),
     grade_date date,
     foreign key(enrollment_id) references enrollments(enrollment_id)
     );
insert into grades(grade_id, enrollment_id, score, grade, grade_date) values(
     1, 2, 88.5, 'B', '2023-06-05'),(
     2, 6, 92.0, 'A', '2023-03-01'),(
     3, 8, 75.5, 'C', '2023-09-01'),(
     4, 9, 81.0, 'B', '2024-03-22'),(
     5, 13, 95.0, 'A', '2024-01-10'),(
     6, 14, 78.0, 'C', '2024-06-08'),(
     7, 15, 84.5, 'B', '2023-04-10'),(
     8, 20, 56.0, 'E', '2023-11-05'),(
     9, 24, 89.0, 'B', '2023-04-01'),(
     10, 26, 42.0, 'D', '2023-09-05'),(
     11, 28, 91.0, 'A', '2023-10-15'),(
     12, 30, 37.0, 'F', '2024-05-29'),(
     13, 31, 85.5, 'B', '2023-03-01'),(
     14, 33, 76.0, 'C', '2023-05-01'),(
     15, 35, 93.0, 'A', '2024-06-10'),(
     16, 37, 82.5, 'B', '2024-02-22'),(
     17, 39, 78.5, 'C', '2023-11-01'),(
     18, 41, 64.0, 'D', '2024-06-08'),(
     19, 45, 59.0, 'E', '2023-10-05'),(
     20, 46, 87.0, 'B', '2023-10-10'),(
     21, 49, 33.5, 'F', '2023-04-15'),(
     22, 10, 28.0, 'F', '2023-12-01'),(
     23, 29, 31.0, 'F', '2023-12-28'),(
	 24, 38, 22.0, 'F', '2024-01-20'),(
     25, 44, 47.5, 'F', '2024-04-28');
select *from grades;
select s.student_id, s.student_name, group_concat(c.course_name) as courses
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id
group by s.student_id, s.student_name;
select s.student_id, s.student_name, c.course_name, e.statuses, g.score, g.grade
from students s join enrollments e on e.student_Id = s.student_id
join courses c on e.course_id = c.course_id
left join grades g on e.enrollment_id = g.enrollment_id;
select s.student_id, s.student_name, c.course_name, g.grade, concat(g.score) as top_students
from students s 
join enrollments e on e.student_id = s.student_id
join courses c on e.course_id = c.course_id
join grades g on e.enrollment_id = g.enrollment_id
order by top_students desc
limit 10;
select s.student_id, s.student_name, s.email
from students s
left join enrollments e on s.student_id = e.student_id
where e.enrollment_id is null;
select c.course_id, c.course_name, count(e.student_id) as total_students
from courses c
left join enrollments e on c.course_id = e.course_id
group by c.course_id, c.course_name
order by total_students desc;