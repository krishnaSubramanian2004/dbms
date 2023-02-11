 create table patients(patientid int primary key,patientname varchar(40),sex varchar(30),age int,pincode int,city varchar(25),regdate date);
Query OK, 0 rows affected (0.17 sec)

mysql> desc patient;
ERROR 1146 (42S02): Table 'hospital.patient' doesn't exist
mysql> desc patients;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| patientid   | int         | NO   | PRI | NULL    |       |
| patientname | varchar(40) | YES  |     | NULL    |       |
| sex         | varchar(30) | YES  |     | NULL    |       |
| age         | int         | YES  |     | NULL    |       |
| pincode     | int         | YES  |     | NULL    |       |
| city        | varchar(25) | YES  |     | NULL    |       |
| regdate     | date        | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.07 sec)


create table clgstudent(sid int unique,sname varchar(90),regno int);
Query OK, 0 rows affected (0.04 sec)

mysql> desc clgstudent;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| sid   | int         | YES  | UNI | NULL    |       |
| sname | varchar(90) | YES  |     | NULL    |       |
| regno | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table emp(eid int, ename varchar(80), age int check(age>=24));
Query OK, 0 rows affected (0.04 sec)

mysql> desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(80) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
mysql> insert into emp values(1,"ram",29);
Query OK, 1 row affected (0.02 sec)

mysql> select *from emp;
+------+-------+------+
| eid  | ename | age  |
+------+-------+------+
|    1 | ram   |   29 |
+------+-------+------+
1 row in set (0.00 sec)

mysql> insert into emp values(2,"varun",21);
ERROR 3819 (HY000): Check constraint 'emp_chk_1' is violated.
mysql>
