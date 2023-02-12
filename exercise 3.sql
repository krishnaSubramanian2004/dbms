mysql> use sse;
Database changed
mysql> create table mentees(Regno int(10),Name varchar(20),Dept varchar(4),Address varchar(10),Fathername varchar(10));
Query OK, 0 rows affected, 1 warning (0.07 sec)
mysql> insert into mentees values(192011090,"Gowtham","CSE","Erode","moorthi");
Query OK, 1 row affected (0.01 sec)

mysql> insert into mentees values(192011079,"arun","CSE","nellore","muthu");
Query OK, 1 row affected (0.00 sec)

mysql> insert into mentees values(192011095,"Harish","ECE","Madurai","Kannan");
Query OK, 1 row affected (0.01 sec)

mysql> insert into mentees values(192011080,"Harini","ECE","Tanjore","Velu");
Query OK, 1 row affected (0.00 sec)

mysql> insert into mentees values(192211080,"Dhivya","ECE","Tirupur","Ramesh");
Query OK, 1 row affected (0.01 sec)

mysql> select*from mentees;
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Erode   | moorthi    |
| 192011079 | arun    | CSE  | nellore | muthu      |
| 192011095 | Harish  | ECE  | Madurai | Kannan     |
| 192011080 | Harini  | ECE  | Tanjore | Velu       |
| 192211080 | Dhivya  | ECE  | Tirupur | Ramesh     |
+-----------+---------+------+---------+------------+
5 rows in set (0.00 sec)

mysql> select Name from mentees;
+---------+
| Name    |
+---------+
| Gowtham |
| arun    |
| Harish  |
| Harini  |
| Dhivya  |
+---------+
5 rows in set (0.00 sec)

mysql> select*from mentees where Name="Gowtham";
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Erode   | moorthi    |
+-----------+---------+------+---------+------------+
1 row in set (0.00 sec)


{{{{{{UPDATE AND DELETE}}}}}}


mysql> use sse;
Database changed

mysql> select*from mentees;
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Erode   | moorthi    |
| 192011079 | arun    | CSE  | nellore | muthu      |
| 192011095 | Harish  | ECE  | Madurai | Kannan     |
| 192011080 | Harini  | ECE  | Tanjore | Velu       |
| 192211080 | Dhivya  | ECE  | Tirupur | Ramesh     |
+-----------+---------+------+---------+------------+
5 rows in set (0.00 sec)
mysql> update mentees set Dept="BME" where Regno=192011079;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from mentees;
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Erode   | moorthi    |
| 192011079 | arun    | BME  | nellore | muthu      |
| 192011095 | Harish  | ECE  | Madurai | Kannan     |
| 192011080 | Harini  | ECE  | Tanjore | Velu       |
| 192211080 | Dhivya  | ECE  | Tirupur | Ramesh     |
+-----------+---------+------+---------+------------+
5 rows in set (0.00 sec)
mysql> update mentees set Address="Chennai"where Dept="CSE";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from mentees;
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Chennai | moorthi    |
| 192011079 | arun    | BME  | nellore | muthu      |
| 192011095 | Harish  | ECE  | Madurai | Kannan     |
| 192011080 | Harini  | ECE  | Tanjore | Velu       |
| 192211080 | Dhivya  | ECE  | Tirupur | Ramesh     |
+-----------+---------+------+---------+------------+
5 rows in set (0.00 sec)
mysql> delete from mentees where Fathername="Velu";
Query OK, 1 row affected (0.01 sec)

mysql> select* from mentees;
+-----------+---------+------+---------+------------+
| Regno     | Name    | Dept | Address | Fathername |
+-----------+---------+------+---------+------------+
| 192011090 | Gowtham | CSE  | Chennai | moorthi    |
| 192011079 | arun    | BME  | nellore | muthu      |
| 192011095 | Harish  | ECE  | Madurai | Kannan     |
| 192211080 | Dhivya  | ECE  | Tirupur | Ramesh     |
+-----------+---------+------+---------+------------+
4 rows in set (0.00 sec)
