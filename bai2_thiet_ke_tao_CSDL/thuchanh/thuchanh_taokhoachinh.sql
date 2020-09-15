use thuchanh_taokhoachinh;
create table users(
user_id int auto_increment primary key,
user_name varchar(30),
password varchar(200),
email varchar(200));
select * from users;
insert into users(user_name,password,email)
value('phuc','aaaaaaa','eeeeee@gmail.com');
