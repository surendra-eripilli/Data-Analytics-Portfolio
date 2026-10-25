create database UniversityDB;
use UniversityDB;
create table users(
    user_id int primary key,
    user_name varchar(50) not null,
    user_phone varchar(15),
    user_email varchar(50) unique,
    user_address varchar(50)
    );
insert into users(user_id, user_name, user_phone, user_email, user_address) values(
    1, 'Admin Main', '9000000001', 'admin1@gmail.com', 'Hyderabad'),(
    2, 'Admin Backup', '9000000002', 'admin2@gmail.com', 'Chennai'),(
    3, 'Manager CSE', '9000000003', 'manager.cse@gmail.com', 'Bangalore'),(
	4, 'Manager ECE', '9000000004', 'manager.ece@gmail.com', 'Hyderabad'),(
    5, 'Manager MBA', '9000000005', 'manager.mba@gmail.com', 'Mumbai'),(
    6, 'Staff Admissions 1', '9000000006', 'staff1@gmail.com', 'Delhi'),(
    7, 'Staff Admissions 2', '9000000007', 'staff2@gmail.com', 'Pune'),(
    8, 'Staff Academics 1', '9000000008', 'staff3@gmail.com', 'Vizag'),(
    9, 'Staff Academics 2', '9000000009', 'staff4@gmail.com', 'Kolkata'),(
    10, 'Support Executive 1', '9000000010', 'support1@gmail.com', 'Vijayawada'),(
    11, 'Support Executive 2', '9000000011', 'support2@gmail.com', 'Hyderabad'),(
    12, 'Data Entry Operator 1', '9000000012', 'data1@gmail.com', 'Chennai'),(
    13, 'Data Entry Operator 2', '9000000013', 'data2@gmail.com', 'Bangalore'),(
    14, 'Data Entry Operator 3', '9000000014', 'data3@gmail.com', 'Mumbai'),(
    15, 'Coordinator 1', '9000000015', 'coord1@gmail.com', 'Delhi'),(
    16, 'Coordinator 2', '9000000016', 'coord2@gmail.com', 'Pune'),(
    17, 'Exam Controller', '9000000017', 'exam@gmail.com', 'Vizag'),(
    18, 'Placement Officer', '9000000018', 'placement@gmail.com', 'Hyderabad'),(
    19, 'IT Support 1', '9000000019', 'it1@gmail.com', 'Chennai'),(
    20, 'IT Support 2', '9000000020', 'it2@gmail.com', 'Bangalore');
select *from users;
create table roles(
    role_id int primary key,
    role_name varchar(50) not null,
    role_desc varchar(150)
    );
insert into roles(role_id, role_name, role_desc) values(
    101, 'Admin', 'Full system control and access'),(
    102, 'Manager', 'Manages courses and operations'),(
    103, 'Staff', 'Handles student activities'),(
    104, 'Support', 'Resolves student queries'),(
    105, 'DataEntry', 'Handles data input and updates'),(
    106, 'Coordinator', 'Coordinates between departments'),(
    107, 'ExamController', 'Manages exams and results'),(
    108, 'PlacementOfficer', 'Handles placements and training'),(
    109, 'ITSupport', 'Maintains system and technical issues'),(
    110, 'Guest', 'Limited read-only access');
select *from roles;
create table login(
    login_id int primary key,
    login_username varchar(50) not null unique,
    login_password varchar(100) not null,
    login_role_id int,
    user_id int,
    foreign key(login_role_id) references roles(role_id),
    foreign key(user_id) references users(user_id)
    );
insert into login(login_id, login_username, login_password, login_role_id, user_id) values(
    1001, 'admin1', 'admin@123', 101, 1),(
    1002, 'admin2', 'admin@123', 101, 2),(
	1003, 'mgr_cse', 'pass@123', 102, 3),(
    1004, 'mgr_ece', 'pass@123', 102, 4),(
    1005, 'mgr_mba', 'pass@123', 102, 5),(
    1006, 'admission1', 'pass@123', 103, 6),(
    1007, 'admission2', 'pass@123', 104, 7),(
    1008, 'academic1', 'pass@123', 103, 8),(
    1009, 'academic2', 'pass@123', 103, 9),(
    1010, 'support1', 'pass@123', 104, 10),(
    1011, 'support2', 'pass@123', 105, 11),(
    1012, 'data1', 'pass@123', 106, 12),(
	1013, 'data2', 'pass@123', 106, 13),(
    1014, 'data3', 'pass@123', 106, 14),(
    1015, 'coord1', 'pass@123', 107, 15),(
    1016, 'coord2', 'pass@123', 107, 16),(
    1017, 'exam_ctrl', 'pass@123', 108, 17),(
    1018, 'placement', 'pass@123', 109, 18),(
    1019, 'it_support1', 'pass@123', 110, 19),(
    1020, 'it_support2', 'pass@123', 110, 20);
select *from login;
create table permissions(
    per_id int primary key,
    per_name varchar(50) not null,
    per_module varchar(50),
    per_role_id int,
    foreign key(per_role_id) references roles(role_id)
    );
insert into permissions(per_id, per_name, per_module, per_role_id) values(
    201, 'Add User', 'User', 101),(
	202, 'Delete User', 'User', 101),(
    203, 'Update User', 'User', 101),(
    204, 'View User', 'User', 101),(
    205, 'Add Course', 'Course', 101),(
    206, 'Delete Course', 'Course', 101),(
    207, 'Update Course', 'Course', 101),(
    208, 'View Course', 'Course', 101),(
    209, 'Manage Roles', 'Roles', 101),(
    210, 'Add Course', 'Course', 102),(
    211, 'Update Course', 'Course', 102),(
    212, 'View Course', 'Course', 102),(
    213, 'View Reports', 'Reports', 102),(
    214, 'View Student', 'Student', 103),(
    215, 'Update Student', 'Student', 103),(
    216, 'View Registration', 'Registration', 103),(
    217, 'View Student', 'Student', 104),(
    218, 'Resolve Query', 'Support', 104),(
    219, 'Insert Student', 'Student', 105),(
    220, 'Insert Course', 'Course', 105),(
    221, 'Update Records', 'Database', 105),(
    222, 'View Reports', 'Reports', 106),(
    223, 'Coordinate Activities', 'General', 106),(
    224, 'Schedule Exam', 'Exam', 107),(
    225, 'Publish Results', 'Exam', 107),(
    226, 'Add Company', 'Placement', 108),(
    227, 'Manage Placements', 'Placement', 108),(
    228, 'Maintain System', 'IT', 109),(
    229, 'Resolve Technical Issues', 'IT', 109),(
    230, 'View Course', 'Course', 110),(
	231, 'View Student', 'Student', 110);
select *from permissions;
create table colleges(
    college_id int primary key,
    college_name varchar(100) not null,
    college_desc varchar(100),
    college_type varchar(50)
    );
insert into colleges(college_id, college_name, college_desc, college_type) values(
    301, 'ABC Engineering College', 'Top engineering institute', 'Engineering'),(
    302, 'XYZ Institute of Technology', 'Advanced technical education', 'Engineering'),(
    303, 'Global Business School', 'Management and business studies', 'Management'),(
    304, 'National Arts College', 'Arts and humanities programs', 'Arts'),(
    305, 'Science Academy', 'Pure science education', 'Science');
select *from colleges;
create table courses(
    course_id int primary key,
    course_name varchar(100) not null,
    course_desc varchar(100),
    course_type varchar(50),
    college_id int,
    foreign key(college_id) references colleges(college_id)
    );
insert into courses(course_id, course_name, course_desc, course_type, college_id) values(
    401, 'B.Tech CSE', 'Computer Science Engineering', 'Full-time', 301),(
    402, 'B.Tech ECE', 'Electronics Engineering', 'Full-time', 301),(
    403, 'B.Tech Mechanical', 'Mechanical Engineering', 'Full-time', 302),(
    404, 'B.Tech Civil', 'Civil Engineering', 'Full-time', 302),(
    405, 'M.Tech', 'Advanced Engineering', 'Full-time', 302),(
    406, 'MBA', 'Business Administration', 'Full-time', 303),(
    407, 'BBA', 'Business Management', 'Part-time', 303),(
    408, 'BA English', 'Literature Studies', 'Part-time', 304),(
    409, 'BA History', 'History Studies', 'Part-time', 304),(
    410, 'B.Sc Physics', 'Physics Program', 'Full-time', 305),(
    411, 'B.Sc Chemistry', 'Chemistry Program', 'Full-time', 305),(
    412, 'B.Sc Mathematics', 'Mathematics Program', 'Full-time', 305),(
    413, 'MCA', 'Computer Applications', 'Full-time', 301),(
    414, 'BCA', 'Computer Applications', 'Full-time', 301),(
    415, 'M.Sc Physics', 'Advanced Physics', 'Full-time', 305);
select *from courses;
create table students(
    student_id int primary key,
    student_name varchar(100) not null,
    student_phone varchar(15),
    student_email varchar(100) unique,
    student_address varchar(100),
    student_password varchar(50)
);
insert into students(student_id, student_name, student_phone, student_email, student_address, student_password) values(
	501,'Ravi Kumar','8000000001','ravi.kumar@gmail.com','Hyderabad','pass'),(
    502,'Suresh Reddy','8000000002','suresh.reddy@gmail.com','Chennai','pass'),(
    503,'Anjali Sharma','8000000003','anjali.sharma@gmail.com','Bangalore','pass'),(
    504,'Priya Singh','8000000004','priya.singh@gmail.com','Mumbai','pass'),(
    505,'Kiran Patel','8000000005','kiran.patel@gmail.com','Delhi','pass'),(
    506,'Rahul Verma','8000000006','rahul.verma@gmail.com','Pune','pass'),(
    507,'Sneha Iyer','8000000007','sneha.iyer@gmail.com','Vizag','pass'),(
    508,'Arjun Nair','8000000008','arjun.nair@gmail.com','Kolkata','pass'),(
    509,'Divya Menon','8000000009','divya.menon@gmail.com','Vijayawada','pass'),(
    510,'Vikram Rao','8000000010','vikram.rao@gmail.com','Hyderabad','pass'),(
    511,'Meena Gupta','8000000011','meena.gupta@gmail.com','Chennai','pass'),(
    512,'Ajay Mishra','8000000012','ajay.mishra@gmail.com','Bangalore','pass'),(
    513,'Pooja Das','8000000013','pooja.das@gmail.com','Mumbai','pass'),(
    514,'Ramesh Yadav','8000000014','ramesh.yadav@gmail.com','Delhi','pass'),(
    515,'Keerthi Raju','8000000015','keerthi.raju@gmail.com','Pune','pass'),(
    516,'Sanjay Naidu','8000000016','sanjay.naidu@gmail.com','Vizag','pass'),(
    517,'Lakshmi Devi','8000000017','lakshmi.devi@gmail.com','Kolkata','pass'),(
    518,'Harish Kumar','8000000018','harish.kumar@gmail.com','Vijayawada','pass'),(
    519,'Nisha Kapoor','8000000019','nisha.kapoor@gmail.com','Hyderabad','pass'),(
    520,'Deepak Joshi','8000000020','deepak.joshi@gmail.com','Chennai','pass'),(
    521,'Amit Shah','8000000021','amit.shah@gmail.com','Bangalore','pass'),(
    522,'Neha Agarwal','8000000022','neha.agarwal@gmail.com','Mumbai','pass'),(
    523,'Rohit Sharma','8000000023','rohit.sharma@gmail.com','Delhi','pass'),(
    524,'Kavya Nair','8000000024','kavya.nair@gmail.com','Pune','pass'),(
    525,'Manoj Kumar','8000000025','manoj.kumar@gmail.com','Vizag','pass'),(
    526,'Swathi Reddy','8000000026','swathi.reddy@gmail.com','Kolkata','pass'),(
    527,'Tarun Kumar','8000000027','tarun.kumar@gmail.com','Vijayawada','pass'),(
    528,'Bhavya Singh','8000000028','bhavya.singh@gmail.com','Hyderabad','pass'),(
    529,'Gopal Krishna','8000000029','gopal.krishna@gmail.com','Chennai','pass'),(
    530,'Anil Kumar','8000000030','anil.kumar@gmail.com','Bangalore','pass'),(
    531,'Sowmya Iyer','8000000031','sowmya.iyer@gmail.com','Mumbai','pass'),(
    532,'Rajesh Khanna','8000000032','rajesh.khanna@gmail.com','Delhi','pass'),(
    533,'Praveen Kumar','8000000033','praveen.kumar@gmail.com','Pune','pass'),(
    534,'Tejaswini Rao','8000000034','tejaswini.rao@gmail.com','Vizag','pass'),(
    535,'Karthik Reddy','8000000035','karthik.reddy@gmail.com','Kolkata','pass'),(
    536,'Sunil Dutt','8000000036','sunil.dutt@gmail.com','Vijayawada','pass'),(
    537,'Padmaja Devi','8000000037','padmaja.devi@gmail.com','Hyderabad','pass'),(
    538,'Naveen Kumar','8000000038','naveen.kumar@gmail.com','Chennai','pass'),(
    539,'Ritika Singh','8000000039','ritika.singh@gmail.com','Bangalore','pass'),(
    540,'Ashok Kumar','8000000040','ashok.kumar@gmail.com','Mumbai','pass'),(
    541,'Geetha Rani','8000000041','geetha.rani@gmail.com','Delhi','pass'),(
    542,'Vamsi Krishna','8000000042','vamsi.krishna@gmail.com','Pune','pass'),(
    543,'Sandeep Reddy','8000000043','sandeep.reddy@gmail.com','Vizag','pass'),(
    544,'Harika Nair','8000000044','harika.nair@gmail.com','Kolkata','pass'),(
    545,'Chaitanya Kumar','8000000045','chaitanya.kumar@gmail.com','Vijayawada','pass'),(
    546,'Madhavi Sharma','8000000046','madhavi.sharma@gmail.com','Hyderabad','pass'),(
    547,'Lokesh Kumar','8000000047','lokesh.kumar@gmail.com','Chennai','pass'),(
    548,'Varun Teja','8000000048','varun.teja@gmail.com','Bangalore','pass'),(
    549,'Kishore Babu','8000000049','kishore.babu@gmail.com','Mumbai','pass'),(
    550,'Srilatha Devi','8000000050','srilatha.devi@gmail.com','Delhi','pass');
select *from students;
create table registrations(
    registration_id int primary key,
    student_id int,
    course_id int,
    registration_date date,
    registration_type varchar(50),
    foreign key(student_id) references students(student_id),
    foreign key(course_id) references courses(course_id)
);
insert into registrations(registration_id, student_id, course_id, registration_date, registration_type) values(
    601,501,401,'2025-01-01','Online'),(602,501,406,'2025-01-02','Offline'),(
    603,502,402,'2025-01-03','Offline'),(604,502,407,'2025-01-04','Online'),(
    605,503,403,'2025-01-05','Online'),(606,503,408,'2025-01-06','Online'),(
    607,504,404,'2025-01-07','Offline'),(608,504,409,'2025-01-08','Online'),(
    609,505,405,'2025-01-09','Online'),(610,505,410,'2025-01-10','Offline'),(
    611,506,411,'2025-01-11','Offline'),(612,506,412,'2025-01-12','Online'),(
    613,507,413,'2025-01-13','Online'),(614,507,414,'2025-01-14','Offline'),(
    615,508,401,'2025-01-15','Offline'),(616,508,402,'2025-01-16','Online'),(
    617,509,403,'2025-01-17','Online'),(618,509,404,'2025-01-18','Offline'),(
    619,510,405,'2025-01-19','Offline'),(620,510,406,'2025-01-20','Online'),(
    621,511,407,'2025-01-21','Online'),(622,511,408,'2025-01-22','Offline'),(
    623,512,409,'2025-01-23','Offline'),(624,512,410,'2025-01-24','Online'),(
    625,513,411,'2025-01-25','Online'),(626,513,412,'2025-01-26','Offline'),(
    627,514,413,'2025-01-27','Offline'),(628,514,414,'2025-01-28','Online'),(
    629,515,401,'2025-01-29','Online'),(630,515,402,'2025-01-30','Offline'),(
    631,516,403,'2025-01-31','Offline'),(632,516,404,'2025-02-01','Online'),(
    633,517,405,'2025-02-02','Online'),(634,517,406,'2025-02-03','Offline'),(
    635,518,407,'2025-02-04','Offline'),(636,518,408,'2025-02-05','Online'),(
    637,519,409,'2025-02-06','Online'),(638,519,410,'2025-02-07','Offline'),(
    639,520,411,'2025-02-08','Offline'),(640,520,412,'2025-02-09','Online'),(
    641,521,413,'2025-02-10','Online'),(642,521,414,'2025-02-11','Online'),(
    643,522,401,'2025-02-12','Offline'),(644,522,402,'2025-02-13','Online'),(
    645,523,403,'2025-02-14','Online'),(646,523,404,'2025-02-15','Offline'),(
    647,524,405,'2025-02-16','Offline'),(648,524,406,'2025-02-17','Online'),(
    649,525,407,'2025-02-18','Online'),(650,525,408,'2025-02-19','Offline'),(
    651,526,409,'2025-02-20','Offline'),(652,526,410,'2025-02-21','Online'),(
    653,527,411,'2025-02-22','Online'),(654,527,412,'2025-02-23','Offline'),(
    655,528,413,'2025-02-24','Offline'),(656,528,414,'2025-02-25','Online'),(
    657,529,401,'2025-02-26','Online'),(658,529,402,'2025-02-27','Offline'),(
    659,530,403,'2025-02-28','Offline'),(660,530,404,'2025-03-01','Online'),(
    661,531,405,'2025-03-02','Online'),(662,531,406,'2025-03-03','Offline'),(
    663,532,407,'2025-03-04','Offline'),(664,532,408,'2025-03-05','Online'),(
    665,533,409,'2025-03-06','Online'),(666,533,410,'2025-03-07','Offline'),(
    667,534,411,'2025-03-08','Offline'),(668,534,412,'2025-03-09','Online'),(
    669,535,413,'2025-03-10','Online'),(670,535,414,'2025-03-11','Offline'),(
    671,536,401,'2025-03-12','Offline'),(672,536,402,'2025-03-13','Online'),(
    673,537,403,'2025-03-14','Online'),(674,537,404,'2025-03-15','Offline'),(
    675,538,405,'2025-03-16','Offline'),(676,538,406,'2025-03-17','Online'),(
    677,539,407,'2025-03-18','Online'),(678,539,408,'2025-03-19','Offline'),(
    679,540,409,'2025-03-20','Offline'),(680,540,410,'2025-03-21','Online'),(
    681,541,411,'2025-03-22','Online'),(682,541,412,'2025-03-23','Offline'),(
    683,542,413,'2025-03-24','Offline'),(684,542,414,'2025-03-25','Online'),(
    685,543,401,'2025-03-26','Online'),(686,543,402,'2025-03-27','Offline'),(
    687,544,403,'2025-03-28','Offline'),(688,544,404,'2025-03-29','Online'),(
    689,545,405,'2025-03-30','Online'),(690,545,406,'2025-03-31','Offline'),(
    691,546,407,'2025-04-01','Offline'),(692,546,408,'2025-04-02','Online'),(
    693,547,409,'2025-04-03','Online'),(694,547,410,'2025-04-04','Offline'),(
	695,548,411,'2025-04-05','Offline'),(696,548,412,'2025-04-06','Online'),(
    697,549,413,'2025-04-07','Online'),(698,549,414,'2025-04-08','Offline'),(
    699,550,401,'2025-04-09','Offline'),(700,550,402,'2025-04-10','Online');
select *from registrations;
-- query questions
select *from users;
select user_name, user_email from users;
select role_name from roles;
select login_username from login;
select *from students where student_address = 'Hyderabad';
select *from courses where college_id = 301;
select *from registrations;
select student_name, student_phone from students;
select *from colleges order by college_name asc;
select *from courses where course_type = 'Full-time';
select *from users where user_phone like '9000%';
select count(*) from users where user_address = 'Chennai';
select *from permissions where per_role_id = 101;
select *from students where student_email like '%@gmail%';
select *from login where login_password = 'pass@123';
select u.user_id, u.user_name, r.role_name
from users u
join login l on u.user_id = l.user_id
join roles r on l.login_role_id = r.role_id;
select c.course_id, c.course_name, c.course_type, co.college_name
from courses  c 
join colleges co on co.college_id = c.college_id
where college_name = 'Global Business School';
select s.student_id, s.student_name, c.course_id, c.course_name, r.registration_date, r.registration_type
from students s 
join registrations r on r.student_id = s.student_id
join courses c on c.course_id = r.course_id;
select c.course_id, c.course_name, count(r.student_id) as total_students
from courses c 
left join registrations r on r.course_id = c.course_id
group by c.course_id, c.course_name
order by total_students desc;
select student_address as city, count(student_id) as total_students
from students 
group by student_address
order by total_students desc;
select s.student_id, s.student_name, r.registration_type
from students s 
join registrations r on r.student_id = s.student_id
where registration_type = 'Online';
select s.student_id, s.student_name, clg.college_name, clg.college_type
from students s 
join registrations r on r.student_id = s.student_id
join courses cr on cr.course_id = r.course_id
join colleges clg on clg.college_id = cr.college_id
where clg.college_type = 'Management';
select s.student_id, s.student_name, s.student_phone, r.registration_date
from students s 
join registrations r on r.student_id = s.student_id
where r.registration_date >= '2025-03-01';
select s.student_id, s.student_name, c.course_name
from courses c 
left join registrations r on r.course_id = c.course_id
join students s on s.student_id = r.student_id
where c.course_id is null;
select clg.college_id, clg.college_name, c.course_name as available_courses
from colleges clg
left join courses c on c.college_id = clg.college_id;




