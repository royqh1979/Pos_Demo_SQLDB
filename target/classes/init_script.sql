/*
create table sale (
	id integer generated by default as identity primary key,
	saleDate timestamp,
	total int
);

create table payment (
	id integer generated by default as identity primary key,
	amount integer not null,
	payType integer not null,
	foreign key (sale_id) refrences sale(id) ON DELETE CASCADE 
);

create table saleItem (
	id integer generated by default as identity primary key
);
*/

create table productDescription(
	id integer generated by default as identity primary key,
	name char(20) not null,
	description varchar(200) not null,
	price integer not null
);

insert into productDescription(name,description,price) values ('面包', '好吃的面包', 400);
insert into productDescription(name,description,price) values ('香肠', '好吃的香肠', 350);
insert into productDescription(name,description,price) values ('榨菜', '好吃的榨菜', 50);
insert into productDescription(name,description,price) values ('方便面', '好吃的方便面', 300);
insert into productDescription(name,description,price) values ('可乐', '好喝的可乐', 200);
insert into productDescription(name,description,price) values ('饼干', '好吃的饼干', 430);
insert into productDescription(name,description,price) values ('蛋糕', '好吃的蛋糕', 680);
insert into productDescription(name,description,price) values ('牛奶', '盒装牛奶', 530);
insert into productDescription(name,description,price) values ('煮鸡蛋', '好吃的鸡蛋', 150);
insert into productDescription(name,description,price) values ('鸡腿', '好吃的鸡腿', 1200);

create table sale(
  id integer GENERATED by DEFAULT as IDENTITY PRIMARY key,
	saleTime TIMESTAMP not null,
	payAmount int not NULL,
	paymentType varchar(20) not NULL
);

create table saleItem(
	id integer GENERATED by DEFAULT as IDENTITY PRIMARY key,
	sale_id INTEGER not null,
	product_id INTEGER not null,
	quantity INTEGER not null,
	FOREIGN KEY (sale_id) REFERENCES sale(id),
	FOREIGN KEY (product_id) REFERENCES productDescription(id)
);
