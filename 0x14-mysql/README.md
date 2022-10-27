# :book: 0x14. MySQL
## 

# :computer: Tasks
## 0. Install MySQL
```bash
## Install MySQL 5.7 in ubuntu
# Create signature key
sudo echo "-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: SKS 1.1.6
Comment: Hostname: pgp.mit.edu

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
sTSKHe+QnnnoFmu4gnmDU31i
=Xqbo
-----END PGP PUBLIC KEY BLOCK-----" >> signature.key

# Add key to server
sudo apt-key add signature.key

# Add apt repo
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'

sudo apt-get update

# Check mysql available versions
sudo apt-cache policy mysql-server

# Install mysql 5.7
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*

# Check if installed
mysql --version

## Unistall mysql 5.7
sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
# Clean packages
sudo apt-get autoclean
# Remove mysql data
sudo rm -rf /var/lib/mysql

# uninstall mysql server
sudo apt remove -y --purge mysql-server
sudo apt purge -y mysql-server
sudo apt autoremove
sudo apt autoclean
sudo apt remove -y dbconfig-mysql

sudo apt purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo rm -r /etc/mysql /var/lib/mysql
sudo apt autoremove
sudo apt autoclean

# Check if uninstalled
mysql --version
```

## 1. Let us in!
### Create user and grant replication privilege
```bash
# Open MySQL shell
mysql -u root -p # or sudo mysql

# Create user holberton_user
CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';

# Confirm user creation
Select user from mysql.user;

# Give user privilege to check primary/replica status of your databases
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;

# Confirm privilege
SHOW GRANTS FOR 'holberton_user'@'localhost';

# 
```

# 2. If only you could see what I've seen with your eyes
## Create database and table
```bash
# Create tyrell_corp database
CREATE DATABASE IF NOT EXISTS tyrell_corp;

# Confirm tyrell_corp database is created
SHOW DATABASES;

# Set tyrell_corp as default database
USE tyrell_corp

# Create table nexus6
CREATE TABLE IF NOT EXISTS nexus6 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL
);

# Confirm nexus6 table creation
SHOW TABLES;
DESCRIBE nexus6;

# Insert record into table nexus6
INSERT INTO nexus6 VALUES(0, 'Lorem Ipsum');

# Show table records
SELECT * FROM nexus6;

# Give user holberton_user SELECT privilege to table nexus6
GRANT SELECT ON tyrell_corp.nexus6 TO 'holberton_user'@'localhost';

# Show holberton_user privileges
SHOW GRANTS FOR 'holberton_user'@'localhost';

# Check
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "use tyrell_corp; select * from nexus6"
projectcorrection280hbtn

```

## 3. Quite an experience to live in fear, isn't it?
Create replica user on server web-01

```bash
# Create user replica_user in web-01
CREATE USER 'replica_user'@'%' IDENTIFIED BY 'projectcorrection280hbtn';

# Confirm user creation
Select user from mysql.user;

# Give user privilege to check primary/replica status of your databases
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
FLUSH PRIVILEGES;

# Show privileges for replica_user
SHOW GRANTS FOR 'replica_user'@'%';

# Give user holberton_user SELECT privilege to table nexus6
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';

# Show holberton_user privileges
SHOW GRANTS FOR 'holberton_user'@'localhost';

# Check
mysql -uholberton_user -p -e 'SELECT user, Repl_slave_priv FROM mysql.user'
projectcorrection280hbtn
```

## Setup a Primary-Replica infrastructure using MySQL.
MySQL Source - web-01.
MySQL Replica - web-02.

### [Configuring the Source MySQL server](4-mysql_configuration_primary)
```bash
# Open source MySQL configuration file
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

# Add the statements and save
server-id    = 1
log_bin      = /var/log/mysql/mysql-bin.log
binlog_do_db = tyrell_corp

# Comment out the statement bind-address
# bind-address	= 127.0.0.1

# Restart MySQL Server and check status
sudo systemctl restart mysql
sudo systemctl status mysql

# Check source status
SHOW MASTER STATUS\G

*************************** 1. row ***************************
             File: mysql-bin.000001
         Position: 154
     Binlog_Do_DB: tyrell_corp
 Binlog_Ignore_DB: 
Executed_Gtid_Set: 
1 row in set (0.00 sec)
```

### [Configure the replica MySQL server](4-mysql_configuration_replica)
```bash
# Open MySQL configuration file
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

# Add the statements and save
server-id       = 2
log_bin         = /var/log/mysql/mysql-bin.log
relay-log       = /var/log/mysql/mysql-relay-bin.log
binlog_do_db    = tyrell_corp

# Restart MySQL Server and check status
sudo systemctl restart mysql
sudo systemctl status mysql

# Connect replica to master
CHANGE MASTER TO
MASTER_HOST='3.85.222.47',
MASTER_USER='replica_user',
MASTER_PASSWORD='projectcorrection280hbtn',
MASTER_LOG_FILE='',
MASTER_LOG_POS=4;

#Start slave.
START SLAVE;

# Check replica status
SHOW SLAVE STATUS\G

*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 3.85.222.47
                  Master_User: replica_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000001
          Read_Master_Log_Pos: 154
               Relay_Log_File: mysql-relay-bin.000002
                Relay_Log_Pos: 367
        Relay_Master_Log_File: mysql-bin.000001
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 0
                   Last_Error: 
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 154
              Relay_Log_Space: 574
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 0
               Last_SQL_Error: 
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 1
                  Master_UUID: b05603c5-4e01-11ed-81cb-1617a1c0af15
             Master_Info_File: /var/lib/mysql/master.info
                    SQL_Delay: 0
          SQL_Remaining_Delay: NULL
      Slave_SQL_Running_State: Slave has read all relay log; waiting for more updates
           Master_Retry_Count: 86400
                  Master_Bind: 
      Last_IO_Error_Timestamp: 
     Last_SQL_Error_Timestamp: 
               Master_SSL_Crl: 
           Master_SSL_Crlpath: 
           Retrieved_Gtid_Set: 
            Executed_Gtid_Set: 
                Auto_Position: 0
         Replicate_Rewrite_DB: 
                 Channel_Name: 
           Master_TLS_Version: 
```

## [5. MySQL backup ](5-mysql_backup)
Script to create a zip backup of MySQL database.

```bash
```


# :books: References
1. [Setting Up Binary Log File Position Based Replication](https://dev.mysql.com/doc/refman/5.7/en/replication-howto.html)
2. [How To Set Up Replication in MySQL](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql )


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhtasApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.
