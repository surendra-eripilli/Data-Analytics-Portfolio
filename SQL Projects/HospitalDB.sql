create database HospitalDB;
use HospitalDB;
create table province_names(
     province_id char(2) primary key,
     province_name varchar(30) not null
     );
insert into province_names(province_id, province_name) values(
'MH', 'Maharashtra'),(
'DL', 'Delhi'),(
'GJ', 'Gujarat'),(
'TS', 'Telangana'),(
'KL', 'Kerala'),(
'TN', 'Tamil Nadu'),(
'RJ', 'Rajasthan'),(
'UP', 'Uttar Pradesh'),(
'WB', 'West Bengal'),(
'MP', 'Madhya Pradesh');
select *from province_names;
create table patients(
     patient_id int primary key,
     first_name varchar(30),
     last_name varchar(30),
	 gender char(1),
     birth_date date,
     city varchar(30),
     province_id char(2),
     allergies varchar(80),
     height decimal(3,0),
     weight decimal(3,0)
);
insert into patients(patient_id, first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight) values(
1, 'Aarav', 'Sharma', 'M', '1990-04-12', 'Mumbai', 'MH', 'None', 172, 68),(
2, 'Vivaan', 'Mehta', 'M', '1985-08-21', 'Delhi', 'DL', 'Dust', 168, 70),(
3, 'Anaya', 'Patel', 'F', '1996-12-03', 'Ahmedabad', 'GJ', 'Peanuts', 160, 55),(
4, 'Diya', 'Reddy', 'F', '1992-11-15', 'Hyderabad', 'TS', 'None', 158, 52),(
5, 'Krishna', 'Nair', 'M', '1988-03-09', 'Kochi', 'KL', 'Pollen', 175, 72),(
6, 'Arjun', 'Iyer', 'M', '1994-06-27', 'Chennai', 'TN', 'None', 170, 65),(
7, 'Meera', 'Singh', 'F', '1999-02-14', 'Jaipur', 'RJ', 'Seafood', 162, 58),(
8, 'Rohan', 'Verma', 'M', '1983-10-10', 'Lucknow', 'UP', 'None', 174, 74),(
9, 'Ishita', 'Dubey', 'F', '1997-07-19', 'Bhopal', 'MP', 'Dust', 159, 54),(
10, 'Siddharth', 'Saxena', 'M', '1991-05-05', 'Kanpur', 'UP', 'None', 178, 80),(
11, 'Tara', 'Chakraborty', 'F', '1993-01-22', 'Kolkata', 'WB', 'Milk', 161, 53),(
12, 'Kabir', 'Banerjee', 'M', '1989-09-16', 'Kolkata', 'WB', 'None', 173, 67),(
13, 'Nisha', 'Yadav', 'F', '2000-04-01', 'Patna', 'BR', 'Eggs', 157, 50),(
14, 'Harsh', 'Jain', 'M', '1995-08-30', 'Indore', 'MP', 'None', 176, 75),(
15, 'Sneha', 'Kapoor', 'F', '1998-12-25', 'Pune', 'MH', 'Dust', 163, 56),(
16, 'Ritik', 'Chauhan', 'M', '1987-03-17', 'Varanasi', 'UP', 'None', 169, 66),(
17, 'Aisha', 'Sheikh', 'F', '1994-11-11', 'Bengaluru', 'KA', 'Pollen', 164, 57),(
18, 'Sameer', 'Ahmed', 'M', '1986-02-28', 'Bengaluru', 'KA', 'None', 171, 69),(
19, 'Pooja', 'Raj', 'F', '1993-06-02', 'Ranchi', 'JH', 'Peanuts', 160, 55),(
20, 'Aditya', 'Kumar', 'M', '1992-09-14', 'Gurgaon', 'HR', 'None', 177, 78),(
21, 'Neha', 'Sahu', 'F', '1996-07-07', 'Raipur', 'CG', 'Dust', 158, 52),(
22, 'Yash', 'Gupta', 'M', '1998-11-20', 'Nagpur', 'MH', 'None', 174, 73),(
23, 'Kavya', 'Joshi', 'F', '2001-05-29', 'Surat', 'GJ', 'Milk', 162, 55),(
24, 'Raj', 'Thakur', 'M', '1984-04-18', 'Shimla', 'HP', 'None', 168, 64),(
25, 'Aparna', 'Menon', 'F', '1990-10-09', 'Kochi', 'KL', 'Seafood', 159, 53),(
26, 'Vikram', 'Deshmukh', 'M', '1983-12-05', 'Nashik', 'MH', 'None', 176, 79),(
27, 'Shruti', 'Kulkarni', 'F', '1995-02-16', 'Pune', 'MH', 'Dust', 161, 52),(
28, 'Rajat', 'Bansal', 'M', '1989-09-23', 'Chandigarh', 'CH', 'Pollen', 173, 71),(
29, 'Gauri', 'Shukla', 'F', '1997-01-31', 'Allahabad', 'UP', 'None', 160, 54),(
30, 'Manoj', 'Pandey', 'M', '1986-06-11', 'Lucknow', 'UP', 'Milk', 175, 77);
select *from patients;
create table doctors(
    doctor_id int primary key,
    first_name varchar(30),
    last_name varchar(30),
    specialty varchar(30)
);
insert into doctors(doctor_id, first_name, last_name, specialty) values(
1, 'Arvind', 'Krishnan', 'Cardiology'),(
2, 'Maya', 'Subramaniam', 'Neurology'),(
3, 'Ramesh', 'Patil', 'Orthopedics'),(
4, 'Leela', 'Srinivas', 'Dermatology'),(
5, 'Sanjay', 'Kapoor', 'General Medicine'),(
6, 'Priya', 'Nambiar', 'Gynecology'),(
7, 'Amit', 'Sharma', 'ENT'),(
8, 'Neeraj', 'Verma', 'Pediatrics'),(
9, 'Farhan', 'Sheikh', 'Psychiatry'),(
10, 'Kiran', 'Rao', 'Oncology'),(
11, 'Vinay', 'Gupta', 'General Surgery'),(
12, 'Shilpa', 'Chawla', 'Endocrinology'),(
13, 'Deepak', 'Reddy', 'Pulmonology'),(
14, 'Ritika', 'Bansal', 'Ophthalmology'),(
15, 'Karthik', 'Menon', 'Nephrology'),(
16, 'Varsha', 'Pillai', 'Gastroenterology'),(
17, 'Nitin', 'Saxena', 'Urology'),(
18, 'Rekha', 'Iyer', 'Rheumatology'),(
19, 'Vivek', 'Thakur', 'Hematology'),(
20, 'Smita', 'Joshi', 'Radiology');
select *from doctors;
create table admissions(
     admission_id int primary key,
     patient_id int,
     admission_date date,
     discharge_date date,
     diagnosis varchar(50),
     doctor_id int);
insert into admissions(admission_id, patient_id , admission_date, discharge_date , diagnosis , doctor_id) values(1, '2024-01-10', '2024-01-15', 'Fever', 5),(
2, '2024-02-05', '2024-02-12', 'Asthma Attack', 13),(
3, '2024-03-18', '2024-03-22', 'Food Allergy', 4),(
4, '2024-04-01', '2024-04-06', 'Viral Infection', 5),(
5, '2024-01-25', '2024-01-30', 'Bronchitis', 13),(
6, '2024-05-14', '2024-05-18', 'Back Pain', 3),(
7, '2024-06-10', '2024-06-15', 'Migraine', 2),(
8, '2024-02-20', '2024-02-27', 'Diabetes Checkup', 12),(
9, '2024-03-05', '2024-03-10', 'Skin Rash', 4),(
10, '2024-07-11', '2024-07-15', 'Fracture', 3),(
11, '2024-08-01', '2024-08-05', 'Thyroid Issue', 12),(
12, '2024-09-14', '2024-09-20', 'Depression', 9),(
13, '2024-10-07', '2024-10-10', 'Fever', 5),(
14, '2024-03-29', '2024-04-03', 'Kidney Stones', 15),(
15, '2024-11-12', '2024-11-16', 'Sinusitis', 7),(
16, '2024-02-15', '2024-02-21', 'Chest Infection', 13),(
17, '2024-04-19', '2024-04-23', 'Allergic Reaction', 4),(
18, '2024-07-02', '2024-07-07', 'Hypertension', 5),(
19, '2024-08-18', '2024-08-24', 'Anxiety', 9),(
20, '2024-05-09', '2024-05-13', 'Stomach Pain', 16),(
21, '2024-06-04', '2024-06-10', 'Seasonal Fever', 5),(
22, '2024-10-14', '2024-10-18', 'Liver Infection', 16),(
23, '2024-01-30', '2024-02-04', 'Food Poisoning', 10),(
24, '2024-03-16', '2024-03-21', 'Joint Pain', 18),(
25, '2024-04-27', '2024-05-01', 'UTI', 6),(
26, '2024-07-19', '2024-07-24', 'High Cholesterol', 12),(
27, '2024-08-11', '2024-08-15', 'Eye Infection', 14),(
28, '2024-09-05', '2024-09-09', 'Anemia', 19),(
29, '2024-11-23', '2024-11-27', 'Flu', 5),(
30, '2024-12-02', '2024-12-08', 'Pneumonia', 13);
select *from admissions;
select first_name, last_name, gender, height from patients where gender = 'M' and height <= 170;
select first_name, last_name, gender, height, weight from patients where gender = 'M' and height >= 160 and weight >= 60;
select first_name, last_name, gender, height from patients where gender = 'M' or height <= 170;
select first_name, last_name, gender, height, weight from patients where gender = 'M' or height >= 160 or weight >= 60;
select first_name, last_name, gender, height from patients where not height <= 170;
select first_name, last_name from patients order by first_name asc;
select first_name, last_name from patients order by last_name desc;
select *from patients order by city asc, first_name desc;
select *from patients where first_name like 'a%';
select *from patients where first_name like '%a';
select *from patients where city like '%ol%';
select *from patients where city like '%_e%';
select *from patients where first_name like '%a_%';
select *from patients where first_name like '%a__%';
select *from patients where city like 'k%a';
select *from patients where first_name not like 'a%';
select *from patients where province_id in ('MH', 'TS', 'TN');
select *from patients where province_id not in ('MH', 'TS', 'TN');
select *from patients where first_name in (select first_name from doctors);
select *from patients where height between 160 and 170;
select *from patients where height not between 160 and 170;
select *from patients where height between 160 and 170 and province_id not in ('MH', 'TS', 'TN');
select *from patients where first_name between 'Diya' and 'Tara';
select patients.first_name, admissions.diagnosis from patients join admissions on patients.patient_id = admissions.patient_id;
select patients.first_name, admissions.diagnosis from patients inner join admissions on patients.patient_id = admissions.patient_id;
select patients.first_name, admissions.diagnosis from patients left join admissions on patients.patient_id = admissions.patient_id;
select patients.first_name, admissions.diagnosis from patients right join admissions on patients.patient_id = admissions.patient_id;
select first_name from patients union select first_name from doctors order by first_name;
select last_name from patients union all select last_name from doctors order by last_name;
select birth_date as DOB from patients;
select avg(weight) as average_weight, avg(height) as average_height from patients;
select *from patients as p join admissions as a on a.patient_id = p.patient_id;
select count(*), province_id from patients where province_id in ('MH', 'TS', 'TN') group by province_id;
select count(*), province_id from patients group by province_id order by count(*) desc;
select count(*), weight from patients where weight >= 60 group by weight;
select count(*), city from patients where city = 'Kolkata' group by city;
select count(*), city from patients where city = 'Kolkata' or city = 'Delhi' group by city order by count(*) desc;
select count(*), weight from patients group by weight having weight >= 60;
select count(*), weight from patients group by weight having weight <= 80 order by weight desc;
select patient_id, first_name, weight,
case
     when weight < 60 then 'the weight less than 60'
     when weight > 60 then 'the weight greater than 60'
     else 'the weight is 60'
     end as weight_group
     from patients;
select first_name, last_name, height,
case
    when height < 170 then 'the height is less than 170'
    when height > 170 then 'the height is greater than 170'
    else 'the height is 170'
    end as height_group
    from patients;
select distinct first_name from patients;
select count(distinct first_name) from patients;
select * from patients 
  where exists (select diagnosis from admissions 
      where patients.patient_id = admissions.patient_id 
      and diagnosis = 'Food Allergy');
select first_name, ifnull(allergies,'none') as allergies from patients;
select first_name, coalesce(allergies,'none') as allergies from patients;
select *from patients where allergies is null;
select count(*) from patients where height >= 160;
select count(*) from admissions where diagnosis in ('Asthma Attack', 'Food Allergy');
select avg(height) from patients;
select avg(height) from patients where patient_id in (1,2);
select sum(weight) from patients;
select sum(weight) from patients where patient_id in (3,6);
select max(height) from patients;
select max(height) from patients where gender = 'F';
select max(weight) from patients where allergies = 'None';
select min(height) from patients;
select min(height) from patients where gender = 'F';
select min(weight) from patients where allergies = 'None';
select concat(first_name, ' ', last_name) as full_name from patients;
select first_name, last_name, length(first_name) from patients;
select first_name, last_name, length(first_name), length(last_name) as length_of_name from patients;
select first_name, last_name, length(concat(first_name, ' ', last_name)) as full_name from patients;
select first_name, last_name, upper(first_name) as Uppercase_first_name from patients;
select first_name, last_name, upper(concat(first_name, ' ', last_name)) as FULL_NAME from patients;
select first_name, last_name, lower(first_name) as Uppercase_first_name from patients;
select first_name, last_name, lower(concat(first_name, ' ', last_name)) as FULL_NAME from patients;
select rand();
select rand(10);
select round(22.687);
select floor(22.9);
select floor(22.1);
select ceil(44.9);
select ceil(44.1);
select abs(108);
select abs(-108);
select power(2, 2);
select power(2, 4);
select sqrt(4);
select sqrt(625);
select current_timestamp();
select year(current_timestamp());
select month(current_timestamp());
select day(current_timestamp());
-- questions
select first_name, last_name, gender from patients where gender = 'M';
select first_name, last_name from patients where allergies is null;
select first_name from patients where first_name like 'C%';
select first_name, last_name from patients where weight between 100 and 120;
set sql_safe_updates = 0;
update patients set allergies = 'NKA' where allergies is null;
select concat(first_name, ' ', last_name) as Full_name from patients;
select first_name, last_name, province_name from patients join province_names on patients.province_id = province_names.province_id;
select count(*) as total_patients from patients where year(birth_date) = 2010;
select *from patients where patient_id in (1,4,11,26);
select count(*) as total_admissions from admissions;
select *from admissions where date(admission_date) = date(discharge_date);
select patient_id, count(*) as total_admissions from admissions where patient_id = 5;
select distinct city as unique_cities from patients where province_id = 'WB';
select first_name, last_name, birth_date from patients where height > 160 and weight > 70;
select first_name, last_name, allergies from patients where allergies is not null and city = 'Hamilton';
select first_name, last_name, max(height) from patients;
select distinct year(birth_date) from patients order by birth_date asc;
select year(birth_date) from patients group by year(birth_date);
select first_name from patients group by first_name having count(first_name) = 1;
select patient_id, first_name from patients where first_name like 's%' and first_name like '%s' and length(first_name) >= 6;
select p.patient_id, p.first_name, p.last_name from patients p, admissions a where diagnosis = 'Dementia' and a.patient_id = p.patient_id;
select first_name from patients order by length(first_name), first_name;
select (select count(*) from patients where gender='M') as male_count, (select count(*) from patients where gender='F') as female_count;
select first_name, last_name, allergies from patients where allergies in ('Penicillin', 'Morphine') order by allergies asc, first_name asc, last_name asc;
select patient_id, diagnosis from admissions group by patient_id, diagnosis having count(*)>1;
select city, count(*) as num_patients from patients group by city order by num_patients desc, city asc;

