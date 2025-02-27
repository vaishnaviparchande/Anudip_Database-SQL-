Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount Table: 

● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.


--->
//Columns: account_id (Primary Key), account_holder_name, account_balance

mysql> create table bankaccount(account_id int primary key,account_holder_name varchar(100),account_balance decimal(10));
Query OK, 0 rows affected (1.50 sec)

//Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)VALUES    (101, 'Vaishnavi Parchande', 50000),    (102, 'Ahiba patan', 25000),    (103, 'Aishwarya panse', 40000);
Query OK, 3 rows affected (0.53 sec)
Records: 3  Duplicates: 0  Warnings: 0

//Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Vaishnavi Parchande |           50000 |
| Ahiba patan         |           25000 |
| Aishwarya panse     |           40000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

//Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Vaishnavi Parchande |           50000 |
| Aishwarya panse     |           40000 |
+---------------------+-----------------+
2 rows in set (0.07 sec)

//Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

mysql> UPDATE BankAccount SET account_balance = 60000 WHERE account_id = 101;
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Vaishnavi Parchande |           60000 |
|        102 | Ahiba patan         |           25000 |
|        103 | Aishwarya panse     |           40000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql>