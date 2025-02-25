mysql> create database organization;
Query OK, 1 row affected (0.01 sec)

mysql> use organization;
Database changed
mysql> create table employee( id int primary key, name varchar(50),mobileno varchar(15), address varchar(100), salary int(10));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee(id,name,mobileno,address,salary) values(1,'Vaishnavi',9373843378,'pune',90000),(2,'Ahiba',9373843378,'Mumbai',80000),(3,'Gouri',9373843378,'Solapur',70000),(4,'Vaibhav',9373843378,'Pune',60000),(5,'Rasika',9373843378,'Solapur',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | Vaishnavi | 9373843378 | pune    |  90000 |
|  2 | Ahiba     | 9373843378 | Mumbai  |  80000 |
|  3 | Gouri     | 9373843378 | Solapur |  70000 |
|  4 | Vaibhav   | 9373843378 | Pune    |  60000 |
|  5 | Rasika    | 9373843378 | Solapur |  50000 |
+----+-----------+------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select * from employee where name like 'A%';
+----+-------+------------+---------+--------+
| id | name  | mobileno   | address | salary |
+----+-------+------------+---------+--------+
|  2 | Ahiba | 9373843378 | Mumbai  |  80000 |
+----+-------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from employee where name like '%i';
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | Vaishnavi | 9373843378 | pune    |  90000 |
|  3 | Gouri     | 9373843378 | Solapur |  70000 |
+----+-----------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from employee where name like '_a%';
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | Vaishnavi | 9373843378 | pune    |  90000 |
|  4 | Vaibhav   | 9373843378 | Pune    |  60000 |
|  5 | Rasika    | 9373843378 | Solapur |  50000 |
+----+-----------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> update employee set salary = 80000 where name = 'vaibhav';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | Vaishnavi | 9373843378 | pune    |  90000 |
|  2 | Ahiba     | 9373843378 | Mumbai  |  80000 |
|  3 | Gouri     | 9373843378 | Solapur |  70000 |
|  4 | Vaibhav   | 9373843378 | Pune    |  80000 |
|  5 | Rasika    | 9373843378 | Solapur |  50000 |
+----+-----------+------------+---------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where name = 'Rasika';
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | Vaishnavi | 9373843378 | pune    |  90000 |
|  2 | Ahiba     | 9373843378 | Mumbai  |  80000 |
|  3 | Gouri     | 9373843378 | Solapur |  70000 |
|  4 | Vaibhav   | 9373843378 | Pune    |  80000 |
+----+-----------+------------+---------+--------+
4 rows in set (0.01 sec)
