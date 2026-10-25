create database library;
use library;
create table librarians(
	  librarian_id int primary key,
      librarian_name varchar(50) not null,
      email varchar(50) unique,
      phone varchar(15)
      );
insert into librarians(librarian_id, librarian_name, email, phone) values(
      101, 'Ramesh Kumar', 'ramesh.kumar@gmail.com', '9876543210'),(
      102, 'Anita Sharma', 'anita.sharma@gmail.com', '9123456780'),(
	  103, 'Suresh Rao', 'suresh.rao@gmail.com', '9988776655'),(
      104, 'Lakshmi Devi', 'lakshmi.devi@gmail.com', '9090909090'),(
      105, 'Vikram Patel', 'vikram.patel@gmail.com', '8001234567');
select *from librarians;
create table books(
	  book_id int primary key,
      title varchar(30),
      auther varchar(20),
      publisher varchar(20),
      published_year year,
      availability enum('yes', 'no')
      );
insert into books(book_id, title, auther, publisher, published_year, availability) values(
      11, 'The Silent River', 'R. Mehta', 'Pearson', '2018', 'yes'),(
	  12, 'Digital Fortress', 'D. Brown', 'Random House', '2005', 'no'),(
      13, 'The Lost Path', 'A. Verma', 'Penguin', '2020', 'yes'),(
	  14, 'Modern SQL Guide', 'K. Rao', 'McGraw Hill', '2019', 'yes'),(
      15, 'Ocean of Dreams', 'S. Nair', 'HarperCollins', '2017', 'no'),(
      16, 'AI Revolution', 'P. Sharma', 'TechWorld', '2023', 'yes'),(
      17, 'History Unfolded', 'M. Singh', 'Oxford Press', '2012', 'no'),(
      18, 'Python Mastery', 'L. George', 'Packt', '2021', 'yes'),(
      19, 'Winds of Change', 'T. Das', 'Penguin', '2016', 'yes'),(
      20, 'Journey to Mars', 'R. Kulkarni', 'SpaceBooks', '2014', 'no'),(
      21, 'The Hidden Truth', 'K. Sharma', 'Pearson', '2015', 'yes'),(
      22, 'Mind Over Matter', 'L. Reddy', 'HarperCollins', '2010', 'no'),(
      23, 'Data Science 101', 'P. Menon', 'TechWorld', '2022', 'yes'),(
      24, 'The Blue Horizon', 'J. Ravi', 'Random House', '2013', 'yes'),(
      25, 'Beyond the Stars', 'H. Patel', 'SpaceBooks', '2018', 'no'),(
      26, 'Mastering MySQL', 'S. Kumar', 'Packt', '2020', 'yes'),(
      27, 'The Last Kingdom', 'T. Joseph', 'Penguin', '2009', 'no'),(
      28, 'Creative Thinking', 'A. Pandey', 'Oxford Press', '2016', 'yes'),(
      29, 'Cloud Computing', 'V. Rangan', 'McGraw Hill', '2021', 'yes'),(
      30, 'The Red Moon', 'U. Das', 'HarperCollins', '2017', 'no');
select *from books;
create table members(
      member_id int primary key,
      member_name varchar(50) not null,
      email varchar(50) unique,
      phone varchar(15),
      address varchar(50),
      join_date date
      );
insert into members(member_id, member_name, email, phone, address, join_date) values(
      1001, 'Ravi Kumar', 'ravi.kumar@gmail.com', '9876543210', 'Hyderabad', '2023-01-10'),(
      1002, 'Anita Sharma', 'anita.sharma@gmail.com', '9123456780', 'Delhi', '2023-02-14'),(
      1003, 'Suresh Reddy', 'suresh.reddy@gmail.com', '9988776655', 'Chennai', '2023-03-02'),(
      1004, 'Lakshmi Devi', 'lakshmi.devi@gmail.com', '9090909090', 'Bangalore', '2023-04-20'),(
      1005, 'Vikram Patel', 'vikram.patel@gmail.com', '8001234567', 'Mumbai', '2023-05-11'),(
      1006, 'Priya Nair', 'priya.nair@gmail.com', '9898989898', 'Kochi', '2023-06-01'),(
      1007, 'Arjun Verma', 'arjun.verma@gmail.com', '9877001122', 'Pune', '2023-06-10'),(
      1008, 'Meera Joshi', 'meera.joshi@gmail.com', '9000088888', 'Nagpur', '2023-07-04'),(
      1009, 'Rahul Singh', 'rahul.singh@gmail.com', '8800554433', 'Bhopal', '2023-07-22'),(
      1010, 'Swathi Rao', 'swathi.rao@gmail.com', '9555121212', 'Visakhapatnam', '2023-08-15'),(
      1011, 'Deepak Yadav', 'deepak.yadav@gmail.com', '7999887766', 'Lucknow', '2023-08-30'),(
	  1012, 'Kiran Gupta', 'kiran.gupta@gmail.com', '9444433333', 'Jaipur', '2023-09-05'),(
      1013, 'Harsha Iyer', 'harsha.iyer@gmail.com', '9777712345', 'Chennai', '2023-09-20'),(
      1014, 'Pooja Mehta', 'pooja.mehta@gmail.com', '8115566778', 'Surat', '2023-10-01'),(
      1015, 'Gaurav Jain', 'gaurav.jain@gmail.com', '9000001234', 'Ahmedabad', '2023-10-12'),(
      1016, 'Nisha Pillai', 'nisha.pillai@gmail.com', '9445566778', 'Thiruvananthapuram', '2023-11-02'),(
      1017, 'Aditya Kulkarni', 'aditya.kulkarni@gmail.com', '9566778899', 'Pune', '2023-11-18'),(
      1018, 'Sneha Patil', 'sneha.patil@gmail.com', '9876123450', 'Kolhapur', '2023-12-01'),(
      1019, 'Manoj Kumar', 'manoj.kumar@gmail.com', '9011223344', 'Hyderabad', '2023-12-15'),(
      1020, 'Sahana Reddy', 'sahana.reddy@gmail.com', '9999000088', 'Nellore', '2024-01-03'),(
      1021, 'Tarun Sharma', 'tarun.sharma@gmail.com', '9988112277', 'Jaipur', '2024-01-10'),(
      1022, 'Divya Karthik', 'divya.karthik@gmail.com', '9555332211', 'Chennai', '2024-01-20'),(
	  1023, 'Rohit Varma', 'rohit.varma@gmail.com', '9080706050', 'Hyderabad', '2024-02-01'),(
      1024, 'Aishwarya Menon', 'aishwarya.menon@gmail.com', '9222334455', 'Kochi', '2024-02-15'),(
      1025, 'Naveen Prasad', 'naveen.prasad@gmail.com', '9555778899', 'Vijayawada', '2024-02-28'),(
      1026, 'Harini Das', 'harini.das@gmail.com', '9334455667', 'Bhubaneswar', '2024-03-05'),(
	  1027, 'Siddharth Rao', 'siddharth.rao@gmail.com', '9446677882', 'Bangalore', '2024-03-12'),(
      1028, 'Komal Choudhary', 'komal.choudhary@gmail.com', '9777888999', 'Delhi', '2024-03-20'),(
      1029, 'Yashwant Shetty', 'yashwant.shetty@gmail.com', '9666555544', 'Mangalore', '2024-03-30'),(
      1030, 'Bhavana Reddy', 'bhavana.reddy@gmail.com', '9333344455', 'Hyderabad', '2024-04-05'),(
      1031, 'Charan Teja', 'charan.teja@gmail.com', '9876501234', 'Hyderabad', '2024-04-12'),(
      1032, 'Ritika Malhotra', 'ritika.malhotra@gmail.com', '9001122334', 'Delhi', '2024-04-18'),(
      1033, 'Sanjay Pandey', 'sanjay.pandey@gmail.com', '9555006677', 'Lucknow', '2024-04-25'),(
      1034, 'Keerthi Suresh', 'keerthi.suresh@gmail.com', '9777665544', 'Chennai', '2024-05-01'),(
      1035, 'Yuvraj Naidu', 'yuvraj.naidu@gmail.com', '9888877665', 'Vijayawada', '2024-05-10'),(
      1036, 'Mahima Gautam', 'mahima.gautam@gmail.com', '9222003344', 'Mumbai', '2024-05-15'),(
      1037, 'Shashi Kumar', 'shashi.kumar@gmail.com', '9444488888', 'Coimbatore', '2024-05-20'),(
      1038, 'Indu Rajan', 'indu.rajan@gmail.com', '9666778890', 'Kochi', '2024-05-28'),(
      1039, 'Rohan Shekar', 'rohan.shekar@gmail.com', '9333002211', 'Bangalore', '2024-06-02'),(
      1040, 'Snehal Pawar', 'snehal.pawar@gmail.com', '9555998877', 'Pune', '2024-06-08'),(
      1041, 'Abhay Shukla', 'abhay.shukla@gmail.com', '9876112233', 'Kanpur', '2024-06-12'),(
      1042, 'Lavanya Menon', 'lavanya.menon@gmail.com', '9003344556', 'Trivandrum', '2024-06-18'),(
      1043, 'Pradeep Rathi', 'pradeep.rathi@gmail.com', '9555334499', 'Indore', '2024-06-25'),(
      1044, 'Nidhi Agarwal', 'nidhi.agarwal@gmail.com', '9777332211', 'Jaipur', '2024-07-01'),(
      1045, 'Varun Tej', 'varun.tej@gmail.com', '9888111992', 'Hyderabad', '2024-07-08'),(
      1046, 'Rekha Srinivas', 'rekha.srinivas@gmail.com', '9222446688', 'Mysore', '2024-07-14'),(
      1047, 'Sameer Purohit', 'sameer.purohit@gmail.com', '9444221133', 'Udaipur', '2024-07-20'),(
      1048, 'Divyanshi Sahu', 'divyanshi.sahu@gmail.com', '9666002288', 'Raipur', '2024-07-26'),(
      1049, 'Harish Chandra', 'harish.chandra@gmail.com', '9333110099', 'Patna', '2024-08-02'),(
      1050, 'Sonali Bhatt', 'sonali.bhatt@gmail.com', '9555889900', 'Dehradun', '2024-08-08');
select *from members;
create table borrowings(
      borrow_id int primary key,
      book_id int,
      member_id int,
      librarian_id int,
      borrow_date date,
      return_date date,
      statuss enum('returned', 'not_returned'),
      foreign key(book_id) references books(book_id),
      foreign key(member_id) references members(member_id),
      foreign key(librarian_id) references librarians(librarian_id)
      );
insert into borrowings (borrow_id, book_id, member_id, librarian_id, borrow_date, return_date, statuss) values(
201, 14, 1011, 102, '2024-01-05', '2024-01-14', 'returned'),(
202, 22, 1035, 105, '2024-01-10', NULL, 'not_returned'),(
203, 18, 1008, 103, '2024-01-12', '2024-01-20', 'returned'),(
204, 27, 1022, 101, '2024-01-15', '2024-01-30', 'returned'),(
205, 11, 1044, 104, '2024-01-18', NULL, 'not_returned'),(
206, 29, 1017, 105, '2024-01-20', '2024-02-02', 'returned'),(
207, 25, 1031, 102, '2024-01-22', '2024-02-01', 'returned'),(
208, 30, 1003, 104, '2024-01-25', '2024-02-10', 'returned'),(
209, 12, 1050, 101, '2024-01-28', '2024-02-05', 'returned'),(
210, 20, 1005, 103, '2024-02-01', NULL, 'not_returned'),(
211, 19, 1027, 105, '2024-02-03', '2024-02-15', 'returned'),(
212, 13, 1040, 102, '2024-02-05', '2024-02-16', 'returned'),(
213, 28, 1001, 104, '2024-02-07', '2024-02-20', 'returned'),(
214, 24, 1009, 101, '2024-02-10', '2024-02-25', 'returned'),(
215, 17, 1025, 103, '2024-02-12', NULL, 'not_returned'),(
216, 21, 1039, 105, '2024-02-14', '2024-02-28', 'returned'),(
217, 16, 1013, 102, '2024-02-17', '2024-03-02', 'returned'),(
218, 23, 1033, 104, '2024-02-19', '2024-03-05', 'returned'),(
219, 26, 1020, 101, '2024-02-21', '2024-03-08', 'returned'),(
220, 15, 1038, 103, '2024-02-23', NULL, 'not_returned'),(
221, 18, 1004, 104, '2024-03-01', '2024-03-12', 'returned'),(
222, 22, 1019, 102, '2024-03-03', '2024-03-18', 'returned'),(
223, 29, 1046, 105, '2024-03-04', '2024-03-17', 'returned'),(
224, 14, 1037, 103, '2024-03-06', NULL, 'not_returned'),(
225, 12, 1016, 101, '2024-03-07', '2024-03-22', 'returned'),(
226, 30, 1024, 104, '2024-03-09', '2024-03-19', 'returned'),(
227, 11, 1030, 105, '2024-03-10', '2024-03-25', 'returned'),(
228, 13, 1028, 102, '2024-03-12', '2024-03-28', 'returned'),(
229, 27, 1050, 101, '2024-03-14', '2024-03-29', 'returned'),(
230, 25, 1002, 103, '2024-03-16', NULL, 'not_returned'),(
231, 21, 1032, 104, '2024-03-20', '2024-04-04', 'returned'),(
232, 17, 1010, 105, '2024-03-21', '2024-04-07', 'returned'),(
233, 24, 1026, 101, '2024-03-22', '2024-04-01', 'returned'),(
234, 16, 1036, 103, '2024-03-23', '2024-04-08', 'returned'),(
235, 19, 1014, 102, '2024-03-25', NULL, 'not_returned'),(
236, 23, 1007, 104, '2024-03-27', '2024-04-12', 'returned'),(
237, 28, 1048, 105, '2024-03-28', '2024-04-14', 'returned'),(
238, 26, 1029, 101, '2024-03-29', '2024-04-10', 'returned'),(
239, 18, 1034, 103, '2024-03-30', '2024-04-15', 'returned'),(
240, 15, 1041, 102, '2024-03-31', NULL, 'not_returned'),(
241, 29, 1006, 104, '2024-04-01', '2024-04-17', 'returned'),(
242, 14, 1023, 105, '2024-04-02', '2024-04-18', 'returned'),(
243, 12, 1018, 101, '2024-04-03', '2024-04-20', 'returned'),(
244, 20, 1045, 103, '2024-04-04', NULL, 'not_returned'),(
245, 11, 1015, 102, '2024-04-05', '2024-04-19', 'returned'),(
246, 30, 1031, 105, '2024-04-06', '2024-04-22', 'returned'),(
247, 13, 1047, 104, '2024-04-07', '2024-04-23', 'returned'),(
248, 27, 1009, 101, '2024-04-08', '2024-04-25', 'returned'),(
249, 25, 1038, 103, '2024-04-09', '2024-04-27', 'returned'),(
250, 23, 1050, 102, '2024-04-10', '2024-04-28', 'returned');
select *from borrowings;
-- questions
select *from books where availability = 'yes';
select *from borrowings where return_date is null;
select *from borrowings where member_id = 1020;
select b.book_id, b.title, b.auther, b.publisher, b.published_year, br.borrow_date, br.return_date, br.statuss
from borrowings br
join books b on br.book_id = b.book_id
where br.member_id = 1022;
select b.book_id, b.auther
from borrowings br join books b on br.book_id = b.book_id
where br.member_id = 1013;
select b.book_id, b.title, br.member_id, br.borrow_date, br.return_date
from borrowings br
join books b on br.book_id = b.book_id
where datediff(return_date, borrow_date) > 14;
select m.member_id, m.member_name, count(br.book_id) as total_borrowed_books
from members m
left join borrowings br on br.member_id = m.member_id
group by m.member_id, m.member_name;
select b.book_id, b.title, m.member_id, m.member_name
from borrowings br
join books b on br.book_id = b.book_id
join members m on br.member_id = m.member_id;
select b.book_id, b.title, br.return_date as not_available
from books b
join borrowings br on b.book_id = br.book_id
where return_date is null;
select b.title, m.member_name, concat(br.borrow_date,',', br.return_date) as borrowing_transactions
from borrowings br
join books b on br.book_id = b.book_id
join members m on br.member_id = m.member_id;
select count(book_id) as total_no_of_books from books;
