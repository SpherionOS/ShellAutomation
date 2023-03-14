#Access mysql localhost
sudo mysql

#############
#You are using a programming language that uses
#; to end commands. Always end commands with ;
#to execute
#############
#Create database
create databases [db_name];

#Use database
use [db_name];

#Create table
create table  [tb_name] (
id int|varchar(255)|date,
[column1] int|varchar(255)|date
);

#Update data
update [tb_name] set [identifier] = [newdata] where [condition];

#Alter table
alter table [tb_name] [column1] = int|varchar(255)|date;

#Add column
alter table [tb_name] add [coloumn_name] int|varchar(255)|date after [other_column_name]

#Delete rows
delete from [tb_name] where [identifier] = [data];

#Select commands
select * from [tb_name] where [identifier] = [data];
