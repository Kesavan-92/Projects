use library;
create table publisher(pub_id int,
pub_name varchar(50),pub_address varchar(50),pub_phone bigint,
constraint const_pub_pk primary key(pub_id));

desc publisher;
create table book(bookid int,book_title varchar(50),
	pubid int,authorname varchar(50),Category enum('Domain','Novels','History','Literature','Geography'),
	Date_of_Arrival date,Book_Status enum('Available','Not-Available'),
    constraint const_bk_pk primary key(bookid),
    constraint const_bk_fk foreign key(pubid) references publisher(pub_id));
    
    desc book;
    
Create table member(cardno int,member_name varchar(25),member_address varchar(30),member_phone bigint,
fees float,age int,
constraint const_mem_pk primary key(cardno),
constraint const_mem_check check(age>=18));

desc member;

create table lending_book(lendid int,cardno int,bookid int,
checkout_date date,returndate date,renewal_date date,comments enum('Borrowed','Book-returned','Book-renewal'),
constraint const_lb_pk primary key(lendid),
constraint const_lb_fk foreign key(cardno) references member(cardno),
constraint const_lb_fk1 foreign key(bookid) references book(bookid));

desc lending_book;

insert into publisher values(101,'Random House India','125,Delhi',8546978458);
insert into publisher values(102,'Westland Publication','128,West bengal',6895412345);
insert into publisher values(103,'Prentice Hall','105,Mumbai',9085641278);
insert into publisher values(104,'O Reilly Media','108,Punjab',8546213568);
insert into publisher values(105,'Packt Publishing','62,Bangalore',9845126878);
insert into publisher values(106,'Springer','45,Hyderabad',8045621457);
insert into publisher values(107,'Apress','154,Gujarat',8745123657);
insert into publisher values(108,'Penguin Books','47,Kochin',8858712345);
insert into publisher values(109,'Hodder & Stoughton','135,Ranchi',8845123257);
insert into publisher values(110,'Beyond books hub','145,Chennai',7412589623);
insert into publisher values(112,'Mukil E Publishing','10,Trichy',9040102565);
insert into publisher values(113,'Pearson Education','25,vizag',9080451425);
insert into publisher values(114,'Wiley','278,Delhi',9080451425);
insert into publisher values(115,'Independent Publisher','Los angles,America',9456235784);
insert into publisher values(111,'McGraw-Hill','2,Penn Plaza',8612547823);



insert into book values(1,'MYSQL',101,'Anand','Domain','2024-01-02','Available');
insert into book values(2,'Palace of Illusions',102,'Chitra Banerjee','Novels','2024-01-03','Available');
insert into book values(3,'The Immortals of Meluha',101,'Amish Tripathi','Novels','2024-01-04','Not-Available');
insert into book values(4,'Oracle SQL by Example',104,'Alice Rischert','Domain','2024-01-05','Available');
insert into book values(5,'Effective Java',103,'Joshua Bloch','Domain','2024-01-07','Available');
insert into book values(6,'Mastering Python Data Analysis',102,'Magnus Vilhelm','Domain','2024-01-10','Not-Available');
insert into book values(7,'Embedded Systems Design',101,'Chris Nagy','Domain','2024-01-15','Available');
insert into book values(8,'Pro PHP Programming',102,'M.J.Powers','Domain','2024-01-17','Available');
insert into book values(9,'The Test of My Life',101,'Yuvraj Singh','History','2024-01-20','Available');
insert into book values(10,'Playing It My Way',102,'Sachin Tendulkar','History','2024-01-28','Available');
insert into book values(11,'Ponniyin Selvan',101,'Kalki Krishnamurthi','History','2024-02-01','Available');
insert into book values(12,'Kamba ramayanam',102,'Ra.Seenivasan','Literature','2024-02-04','Available');
insert into book values(13,'Mahabaratham',101,'N.Parthasarathy','Literature','2024-02-07','Available');
insert into book values(14,'Sivagamiyin sabatham',104,'Kalki Krishnamurthi','History','2024-02-09','Available');
insert into book values(15,'Programming with Java',103,'Balagurusamy','Domain','2024-02-12','Available');
insert into book values(16,'HTML',102,'Sybex','Domain','2024-02-15','Available');
insert into book values(17,'World Regional Geography',101,'Caitlin Finlayson','Geography','2024-02-18','Available');
insert into book values(18,'Modern Geography',102,'James Geikie','Geography','2024-02-21','Available');
insert into book values(19,'Pride and Prejudice',101,'Jane Austen','Novels','2024-02-25','Available');
insert into book values(20,'1984',102,'George Orwell','Novels','2024-02-28','Available');
insert into book values(21,'To Kill a Mockingbird',114,'Harper Lee','Novels','2024-03-01','Available');
insert into book values(22,'The Road',102,'Cormac McCarthy','Novels','2024-03-04','Available');
insert into book values(23,'Normal People',105,'Sally Rooney','Novels','2024-03-06','Available');
insert into book values(24,'Where the Crawdads Sing',104,'Delia Owens','Novels','2024-03-09','Available');
insert into book values(25,'Learning SQL',103,'Alan Beaulieu','Domain','2024-03-12','Available');
insert into book values(26,'Introduction to Algorithms',102,'Thomas H. Cormen','Domain','2024-03-15','Available');
insert into book values(27,'The Great Gatsby',108,'F.Scott Fitzgerald','Novels','2024-03-17','Available');
insert into book values(28,'Microeconomics',102,'Paul Krugman','Domain','2024-03-19','Available');
insert into book values(29,'World Geography',113,'Richard G. Boehm','Geography','2024-03-24','Available');
insert into book values(30,'Advanced Java',102,'Kathy Sierra','Domain','2024-03-30','Available');
insert into book values(31,'Guns,Germs And Steel:The Fates Of Human Societies',114,'Jared Diamond','History','2024-04-02','Available');
insert into book values(32,'A History Of Nazi Germany',112,'William L. Shirer','History','2024-04-05','Available');
insert into book values(33,'A PeopleS History Of The United States',105,'Howard Zin','History','2024-04-08','Available');
insert into book values(34,'Decline And Fall Of The Roman Empire',104,'Edward Gibbon','History','2024-04-11','Available');
insert into book values(35,'The Political Genius Of Abraham Lincoln',103,'Doris Kearns Goodwin','History','2024-04-13','Available');
insert into book values(36,'The Silk Roads:A New History Of The World',106,'Peter Frankopan','History','2024-04-15','Available');
insert into book values(37,'1776',108,'David Mccullough','History','2024-04-18','Available');
insert into book values(38,'The Wright Brothers',109,'David Mccullough','History','2024-04-20','Available');
insert into book values(39,'The Diary Of A Young Girl',113,'Anne Frank','History','2024-04-24','Available');
insert into book values(40,'Spqr:A History Of Ancient Rome',115,'Mary Beard','History','2024-04-29','Available');
insert into book values(41,'The Catcher In The Rye',114,'J.D.Salinger','Novels','2024-05-02','Available');
insert into book values(42,'Moby-Dick',112,'Herman Melville','Novels','2024-05-04','Available');
insert into book values(43,'Beloved',105,'Toni Morrison','Novels','2024-05-06','Available');
insert into book values(44,'Jane Eyre',104,'Charlotte Bronte','Novels','2024-05-10','Available');
insert into book values(45,'The Kite Runner',103,'Khaled Hosseini','Novels','2024-05-11','Available');
insert into book values(46,'Dracula',106,'Bram Stoker','Novels','2024-05-15','Available');
insert into book values(47,'Frankenstein',108,'Mary Shelley','Novels','2024-05-19','Available');
insert into book values(48,'The Shining',109,'Stephen King','Novels','2024-05-20','Available');
insert into book values(49,'The Haunting Of Hill House',113,'Shirley Jackson','Novels','2024-05-23','Available');
insert into book values(50,'Interview With The Vampire',115,'Anne Rice','Novels','2024-05-31','Available');
insert into book values(51,'Pet Sematary',114,'Stephen King','Novels','2024-06-01','Not-Available');
insert into book values(52,'The Excorcist',112,'William Peter Blatty','Novels','2024-06-03','Not-Available');
insert into book values(53,'Bird Box',105,'Josh Malerman','Novels','2024-06-07','Not-Available');
insert into book values(54,'House Of Leaves',104,'Mark Z.Danielewski','Novels','2024-06-11','Not-Available');
insert into book values(55,'The Silence Of The Lamps',103,'Thomas Harris','Novels','2024-06-13','Not-Available');
insert into book values(56,'The Notebook',106,'Nicholas Sparks','Novels','2024-06-17','Not-Available');
insert into book values(57,'Outlander',108,'Diana Gabaldon','Novels','2024-06-19','Not-Available');
insert into book values(58,'Me Before You',109,'Jojo Moyes','Novels','2024-06-23','Not-Available');
insert into book values(59,'The Quantum Enigma',113,'Dr.Emily Hart','Geography','2024-06-26','Not-Available');
insert into book values(60,'Echoes of the Past',115,'Michael Reed','Novels','2024-06-28','Not-Available');
insert into book values(61,'Mastering Python',114,'Lisa Johnson','Domain','2024-07-03','Not-Available');
insert into book values(62,'The Enchanted Forest',112,'Sarah Miller','Novels','2024-07-05','Not-Available');
insert into book values(63,'Data Science for Beginners',105,'Kevin Liu','Domain','2024-07-07','Not-Available');
insert into book values(64,'Journey to the Unknown',104,'Amanda Cruz','Geography','2024-07-09','Not-Available');
insert into book values(65,'The Art of Mindfulness',103,'Rebecca White','Novels','2024-07-11','Not-Available');
insert into book values(66,'Understanding Machine Learning',106,'David Patel','Domain','2024-07-13','Not-Available');
insert into book values(67,'Secrets of the Ocean',108,'Laura Bennett','Geography','2024-07-15','Not-Available');
insert into book values(68,'Whispers in the Dark',109,'Tom Harris','Novels','2024-07-17','Not-Available');
insert into book values(69,'The Silent Sea',113,'Emma Collins','Literature','2024-07-19','Not-Available');
insert into book values(70,'The Last Horizon',115,'Samuel Green','Literature','2024-07-21','Not-Available');
insert into book values(71,'Beneath the Willow Tree',114,'Olivia Brooks','Literature','2024-07-23','Not-Available');
insert into book values(72,'Shadows of the Heart',112,'Daniel Morgan','Literature','2024-07-25','Not-Available');
insert into book values(73,'The Forgotten Song',105,'Hannah Lee','Literature','2024-07-27','Not-Available');
insert into book values(74,'Echoes of Eternity',104,'James Turner','Literature','2024-07-29','Not-Available');
insert into book values(75,'The Illusion of Time',103,'Isabella Wright','Literature','2024-07-31','Not-Available');
insert into book values(76,'A Glimpse of Dawn',106,'William Scott','Literature','2024-08-01','Not-Available');
insert into book values(77,'Threads of Destiny',108,'Sophia Adams','Literature','2024-08-02','Not-Available');
insert into book values(78,'Whispers of the Past',109,'Andrew Thompson','Literature','2024-08-02','Not-Available');
insert into book values(79,'World Atlas',113,'Robert Anderson','Geography','2024-08-03','Not-Available');
insert into book values(80,'Exploring Continents',115,'Karen Lewis','Geography','2024-08-04','Not-Available');
insert into book values(81,'Geography of the Earth',114,'Michael Carter','Geography','2024-08-05','Not-Available');
insert into book values(82,'The Global Climate',112,'Jessica Hayes','Geography','2024-08-05','Not-Available');
insert into book values(83,'Landscapes and Regions',105,'David Brown','Geography','2024-08-05','Not-Available');
insert into book values(84,'Rivers and Mountains',104,'Emily Robinson','Geography','2024-08-06','Not-Available');
insert into book values(85,'Human Geography: Patterns and Processes',103,'James King','Geography','2024-08-07','Not-Available');
insert into book values(86,'Cities of the World',107,'Linda White','Geography','2024-08-08','Not-Available');
insert into book values(87,'Geographic Information Systems',108,'Thomas Evans','Geography','2024-08-08','Not-Available');
insert into book values(88,'The Geography of Biodiversity',110,'Sarah Turner','Geography','2024-08-09','Not-Available');
insert into book values(89,'Echoes of Ancient Civilizations',113,'Richard Adams','History','2024-08-09','Not-Available');
insert into book values(90,'The Age of Empires',115,'Laura Bennett','History','2024-08-10','Not-Available');
insert into book values(91,'Chronicles of the Middle Ages',114,'Jonathan Clark','History','2024-08-10','Not-Available');
insert into book values(92,'Revolutions and Reform',112,'Emma Thompson','History','2024-08-10','Not-Available');
insert into book values(93,'World War Chronicles',105,'Michael Turner','History','2024-08-11','Not-Available');
insert into book values(94,'Advanced Data Structures',104,'Anna Patel','Domain','2024-08-11','Not-Available');
insert into book values(95,'Introduction to Cloud Computing',103,'Robert Green','Domain','2024-08-12','Not-Available');
insert into book values(96,'Cybersecurity Essentials',107,'Jessica Miller','Domain','2024-08-13','Not-Available');
insert into book values(97,'Network Security Fundamentals',108,'Jason Brown','Domain','2024-08-14','Not-Available');
insert into book values(98,'Big Data Analytics',110,'Laura Green','Domain','2024-08-16','Not-Available');
insert into book values(99,'Climate and Weather Patterns',113,'Karen Turner','Geography','2024-08-17','Not-Available');
insert into book values(100,'Human Impact on the Environment',115,'Emily Johnson','Geography','2024-08-18','Not-Available');


insert into member values(1001,'Kesavan','Madurai',7010951116,500,29);
insert into member values(1002,'Anand','Trichy',9944756142,250,27);
insert into member values(1003,'Ranjani','Chennai',9042956898,300,26);
insert into member values(1004,'Priya','Salem',9629784512,100,21);
insert into member values(1005,'Sankar','Chennai',9566202651,1000,36);
insert into member values(1006,'Deepak','Nagercoil',9994512365,150,34);
insert into member values(1007,'Padma','Tirunelveli',9994478524,700,33);
insert into member values(1008,'Santhiya','Virudhunagar',9994130728,450,28);
insert into member values(1009,'Siva','Madurai',9028565471,550,25);
insert into member values(1010,'Dhanalakshmi','Theni',9445123657,850,24);
insert into member values(1011,'Bavani','Tanjore',9994562147,120,27);
insert into member values(1012,'Suresh','Kanniyakumari',9566123525,750,32);
insert into member values(1013,'Shabana','Chennai',8220204562,200,38);
insert into member values(1014,'Ramesh','Villupuram',6845212364,250,31);
insert into member values(1015,'Kaveri','Thiruvallur',7200456658,350,30);
insert into member values(1016,'Naveen','Ariyalur',9894561232,200,25);
insert into member values(1017,'Pandiyan','Perambalur',7895463224,1200,26);
insert into member values(1018,'Muthupandi','Madurai',9045621365,600,30);
insert into member values(1019,'Venkatesh','Virudhunagar',9941256874,550,31);
insert into member values(1020,'Suganthi','Dindigul',9994478921,100,29);
insert into member values(1021,'Suruthi','Chennai',9856213654,250,27);
insert into member values(1022,'Jenifer','Chennai',8956321475,500,24);
insert into member values(1023,'Ayyanar','Madurai',6845621356,750,35);
insert into member values(1024,'Vijaya','Thirumangalam',7200315694,800,27);
insert into member values(1025,'Arun','Madurai',9988445512,900,38);
insert into member values(1026,'Ravi','Kovilpatti',8877445163,1100,45);
insert into member values(1027,'Pandiyaraj','Tanjore',9896979495,1200,42);
insert into member values(1028,'Vani','Madurai',9951236584,100,20);
insert into member values(1029,'Dharshini','Madurai',9626364656,300,19);
insert into member values(1030,'Bharathi','Trichy',8545621557,450,23);
insert into member values(1031,'Ananthi','Sattur',7412563958,650,23);
insert into member values(1032,'Subashini','Dindigul',9978412536,800,18);
insert into member values(1033,'Thirupathiraj','Kallupatti',9562136548,350,52);
insert into member values(1034,'Seenivasan','Melur',9874125638,400,65);
insert into member values(1035,'Serma','Madurai',9626513254,750,49);
insert into member values(1036,'Renuga','Salem',6852362147,800,36);
insert into member values(1037,'Chitra','Virudhunagar',9741258963,900,34);
insert into member values(1038,'Suriya','Thiruvallur',9845651236,1000,33);
insert into member values(1039,'Nithya','Tiruppur',9656462136,1250,23);
insert into member values(1040,'Kanimozhi','Thiruvannamala',6545871236,1000,25);
insert into member values(1041,'Sakthivel','Coimbatore',9955412563,900,30);
insert into member values(1042,'Balamurugan','Dharmapuri',8844551172,800,47);
insert into member values(1043,'Reshma','Hosur',7744125639,700,32);
insert into member values(1044,'Rehana','Krishnagiri',6655441122,600,36);
insert into member values(1045,'Rizwan','Trichy',9895412365,650,23);
insert into member values(1046,'Sohail','Trichy',7945123658,850,24);
insert into member values(1047,'Aarif','Theni',7014562389,150,22);
insert into member values(1048,'Vishalini','Virudhunagar',9845123654,200,20);
insert into member values(1049,'Keerthana','Theni',8945621326,350,27);
insert into member values(1050,'sathya','Kumbakonam',8512367895,400,26);
insert into member values(1051,'Sathish','Chennai',8844123265,200,45);
insert into member values(1052,'Hari','Madurai',6814789852,250,60);
insert into member values(1053,'Palani','Thirumangalam',6741236541,300,22);
insert into member values(1054,'Gayathri','Madurai',7743512465,400,25);
insert into member values(1055,'Mithun','Kovilpatti',9944123214,750,24);
insert into member values(1056,'Revathi','Thiruvallur',7984125236,650,23);
insert into member values(1057,'Sipporah','Tiruppur',8899445511,450,26);
insert into member values(1058,'Anusiya','Thiruvannamalai',8797574127,500,27);
insert into member values(1059,'Maheer','Coimbatore',8654123214,550,32);
insert into member values(1060,'Lokith','Dharmapuri',9894951235,600,44);
insert into member values(1061,'Mercy','Hosur',9500421254,900,42);
insert into member values(1062,'Navaneethan','Krishnagiri',9629412578,1500,28);
insert into member values(1063,'Dhasarathan','Madurai',9632124578,1700,26);
insert into member values(1064,'Hema','Trichy',9894625312,650,32);
insert into member values(1065,'Mithran','Chennai',9600078412,450,40);
insert into member values(1066,'Meena','Salem',9652123214,300,30);
insert into member values(1067,'Mahesh','Chennai',7741253699,250,20);
insert into member values(1068,'Suganya','Nagercoil',9878412563,350,28);
insert into member values(1069,'Saranya','Tirunelveli',6699456512,950,25);
insert into member values(1070,'Nathiya','Virudhunagar',7845659896,850,26);

desc lending_book;

insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(1,1001,1,'2024-07-20','2024-07-25','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(2,1002,2,'2024-06-10','2024-06-24','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,renewal_date,comments)values(3,1003,3,'2024-07-10','2024-07-24','2024-07-17','Book-renewal');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(4,1004,4,'2024-05-15','2024-05-20','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(5,1005,5,'2024-04-10','2024-05-10','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,renewal_date,comments)values(6,1006,6,'2024-05-10','2024-05-28','2024-05-18','Book-renewal');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,renewal_date,comments)values(7,1003,3,'2024-06-17','2024-06-30','2024-06-23','Book-renewal');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(8,1007,7,'2024-06-13','2024-06-20','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(9,1009,9,'2024-07-17','2024-07-26','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,renewal_date,comments)values(10,1008,8,'2024-03-15','2024-03-30','2024-03-22','Book-renewal');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(11,1010,10,'2024-06-26','2024-07-03','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(12,1011,11,'2024-06-27','2024-07-04','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(13,1012,12,'2024-06-28','2024-07-05','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(14,1013,13,'2024-06-29','2024-07-06','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(15,1014,14,'2024-06-30','2024-07-07','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(16,1015,15,'2024-07-01','2024-07-08','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(17,1016,16,'2024-07-02','2024-07-09','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(18,1017,17,'2024-07-03','2024-07-10','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(19,1018,18,'2024-07-04','2024-07-11','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(20,1019,19,'2024-07-05','2024-07-12','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(21,1020,20,'2024-07-06','2024-07-13','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(22,1021,15,'2024-07-07','2024-07-14','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(23,1022,19,'2024-07-08','2024-07-15','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(24,1023,18,'2024-07-09','2024-07-16','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(25,1024,20,'2024-07-10','2024-07-17','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(26,1025,8,'2024-07-11','2024-07-18','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(27,1002,5,'2024-07-12','2024-07-19','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(28,1003,21,'2024-07-13','2024-07-20','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(29,1005,22,'2024-07-14','2024-07-21','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(30,1006,23,'2024-07-15','2024-07-22','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(31,1008,24,'2024-07-16','2024-07-23','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(32,1010,25,'2024-07-17','2024-07-24','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(33,1026,26,'2024-07-18','2024-07-25','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(34,1027,27,'2024-07-19','2024-07-26','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(35,1028,28,'2024-07-20','2024-07-27','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(36,1029,29,'2024-07-21','2024-07-28','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(37,1030,30,'2024-07-22','2024-07-29','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(38,1031,20,'2024-07-23','2024-07-30','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(39,1032,25,'2024-07-24','2024-07-31','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(40,1033,28,'2024-07-25','2024-08-01','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(41,1034,31,'2024-07-26','2024-08-02','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(42,1035,32,'2024-07-27','2024-08-03','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(43,1036,33,'2024-07-28','2024-08-04','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(44,1037,34,'2024-07-29','2024-08-05','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(45,1038,35,'2024-07-30','2024-08-06','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(46,1039,36,'2024-07-31','2024-08-07','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(47,1040,37,'2024-06-22','2024-06-29','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(48,1041,38,'2024-06-23','2024-06-30','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(49,1042,39,'2024-06-24','2024-07-01','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(50,1043,40,'2024-06-25','2024-07-02','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(51,1044,41,'2024-06-26','2024-07-03','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(52,1045,42,'2024-06-27','2024-07-04','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(53,1025,43,'2024-06-28','2024-07-05','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(54,1028,44,'2024-06-29','2024-07-06','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(55,1032,45,'2024-06-30','2024-07-07','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(56,1034,46,'2024-07-01','2024-07-08','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(57,1040,47,'2024-07-10','2024-07-17','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(58,1020,48,'2024-07-11','2024-07-18','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(59,1022,49,'2024-07-12','2024-07-19','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(60,1030,50,'2024-07-13','2024-07-20','Book-returned');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(61,1050,51,'2024-08-01','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(62,1051,52,'2024-08-02','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(63,1052,53,'2024-08-03','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(64,1053,54,'2024-08-04','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(65,1054,55,'2024-08-05','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(66,1055,56,'2024-08-06','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(67,1056,57,'2024-08-07','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(68,1057,58,'2024-08-08','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(69,1058,59,'2024-08-09','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(70,1059,60,'2024-08-10','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,returndate,comments)values(71,1060,19,'2024-08-11','2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(72,1061,20,'2024-08-12','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(73,1062,15,'2024-08-13','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(74,1063,19,'2024-07-28','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(75,1064,18,'2024-07-29','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(76,1065,20,'2024-07-30','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(77,1052,72,'2024-07-31','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(78,1053,74,'2024-08-01','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(79,1064,76,'2024-08-02','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(80,1070,80,'2024-08-03','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(81,1052,81,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(82,1055,82,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(83,1055,83,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(84,1040,84,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(85,1062,85,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(86,1064,86,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(87,1060,87,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(88,1040,84,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(89,1042,88,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(90,1063,89,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(91,1065,90,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(92,1032,91,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(93,1066,92,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(94,1040,93,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(95,1043,94,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(96,1067,95,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(97,1068,96,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(98,1069,97,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(99,1001,98,'2024-08-19','Borrowed');
insert into lending_book(lendid,cardno,bookid,checkout_date,comments)values(100,1069,99,'2024-08-19','Borrowed');


use library;
select p.pub_id,p.pub_name,b.book_title,b.category from publisher p inner join book b on p.pub_id=b.pubid order by p.pub_id;

select m.member_name,count(b.book_title) from member m inner join lending_book l on m.cardno=l.cardno inner join book b on l.bookid=b.bookid group by m.member_name having count(b.book_title)>1;

select book_title,category,extract(year from Date_of_Arrival) as New_arrivals_year from book where extract(year from '2024-01-01')=2024 order by category;

select m.cardno,m.member_name,m.member_phone,b.book_title,l.returndate,month(l.returndate) as Return_month from lending_book l inner join book b on l.bookid=b.bookid inner join member m on l.cardno=m.cardno where month(l.returndate)=8;

select b.book_title,l.checkout_date from lending_book l inner join book b on b.bookid=l.bookid where l.comments='Borrowed';

select m.member_name,b.book_title,l.checkout_date,l.returndate,p.pub_name from lending_book l inner join member m on l.cardno=m.cardno inner join book b on l.bookid=b.bookid inner join publisher p on p.pub_id=b.pubid;

select m.member_name,b.book_title,l.returndate from book b inner join lending_book l inner join member m on b.bookid=l.bookid and l.cardno=m.cardno where returndate=getdate();













