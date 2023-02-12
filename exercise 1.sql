create database sse;
Query OK, 1 row affected (0.01 sec)

mysql> use sse;
Database changed

create table faculty(Facid int(20),Facname varchar(20),Facdept varchar(10),salary int(20));
Query OK, 0 rows affected, 2 warnings (0.03 sec)

mysql> desc faculty;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Facid   | int         | YES  |     | NULL    |       |
| Facname | varchar(20) | YES  |     | NULL    |       |
| Facdept | varchar(10) | YES  |     | NULL    |       |
| salary  | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> show tables;
+---------------+
| Tables_in_sse |
+---------------+
| bin           |
| empdepartment |
| empdept       |
| employee      |
| student       |
| studepartment |
| t             |
+---------------+
7 rows in set (0.01 sec)
mysql> desc student;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Rollno   | int         | YES  |     | NULL    |       |
| Name     | varchar(20) | YES  |     | NULL    |       |
| Gender   | char(1)     | YES  |     | NULL    |       |
| DOB      | varchar(10) | YES  |     | NULL    |       |
| Mobileno | int         | YES  |     | NULL    |       |
| City     | varchar(20) | YES  |     | NULL    |       |
| District | varchar(20) | YES  |     | NULL    |       |
| dept     | varchar(5)  | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

create studepartment(Deptid int(20),Deptname varchar(20),Rollno int(5));
Query OK, 0 rows affected, 2 warnings (0.03 sec)

mysql> desc studepartment;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Deptid   | int         | YES  |     | NULL    |       |
| Deptname | varchar(20) | YES  |     | NULL    |       |
| Rollno   | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Empid    | int         | NO   | PRI | NULL    |       |
| Empname  | varchar(20) | YES  |     | NULL    |       |
| Salary   | float       | YES  |     | NULL    |       |
| Mobileno | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
mysql> desc empdept;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Empid       | int         | YES  | MUL | NULL    |       |
| Empdeptname | varchar(15) | YES  |     | NULL    |       |
| Empdeptid   | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
mysql> insert into faculty values(1,"Gowtham","CSE",10,000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into faculty values(1,"Gowtham","CSE",10000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into faculty values(2,"ARUN","ECE",120000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into faculty values(3,"KARTHI",BME",150000);
    "> ;
    "> ^C
mysql>
mysql> insert into faculty values(3,"KARTHI","BME",12000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into faculty values(4,"VIKAS","IT",110000);
Query OK, 1 row affected (0.02 sec)

mysql> select*from faculty;
+-------+---------+---------+--------+
| Facid | Facname | Facdept | salary |
+-------+---------+---------+--------+
|     1 | Gowtham | CSE     |  10000 |
|     2 | ARUN    | ECE     | 120000 |
|     3 | KARTHI  | BME     |  12000 |
|     4 | VIKAS   | IT      | 110000 |
+-------+---------+---------+--------+
4 rows in set (0.00 sec)
mysql> show tables;
+---------------+
| Tables_in_sse |
+---------------+
| bin           |
| empdepartment |
| empdept       |
| employee      |
| faculty       |
| student       |
| t             |
+---------------+
7 rows in set (0.01 sec)
mysql> drop table faculty;
Query OK, 0 rows affected (0.02 sec)

mysql> create database s;
Query OK, 1 row affected (0.01 sec)

mysql> show tables;
+---------------+
| Tables_in_sse |
+---------------+
| bin           |
| empdepartment |
| empdept       |
| employee      |
| student       |
| studepartment |
| t             |
+---------------+
7 rows in set (0.01 sec)
mysql> alter table employee add Address varchar(15);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Empid    | int         | NO   | PRI | NULL    |       |
| Empname  | varchar(20) | YES  |     | NULL    |       |
| Salary   | float       | YES  |     | NULL    |       |
| Mobileno | int         | YES  |     | NULL    |       |
| Address  | varchar(15) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
