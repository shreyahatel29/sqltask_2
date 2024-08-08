create table persons(
	person_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	age int
)

select * from persons

insert into persons(first_name,last_name,age) values ('Ola','Hansen',30),('Tove','Svendson',23),('Kari','Petterson',20),('Amy','Jordan',24),('Bill','Tibb',34),('David','Guerin',28),('Bill','Sadat',25),('christine','Riveles',36),('Sasha','Roux',21),('Timothee','Laurent',35),('Lou','Moreau',34),('Gael','Lefebvre',32),('Dominique','Dupont',21),('Claude','Girard',24),('Camilie','David',28),('Jose','Fouriner',29),('Noah','Lefebvre',32),('Charlie','Morel',20)

select * from persons

insert into persons(first_name,last_name,age) values ('Gael','Simon',30),('Rose','Mary',29)

select * from persons

create table orders(
	order_id serial primary key,
	order_no int,
	order_price int,
	person_id int,
	foreign key (person_id) references persons(person_id)
)
select * from orders

insert into orders(order_no,order_price,person_id) values (123,4567,2)

select * from orders

insert into orders(order_no,order_price,person_id) values (124,4007,1)

insert into orders(order_no,order_price,person_id) values (125,4217,4),(126,4321,3),(127,5678,10),(128,5000,6),(129,6548,5)
insert into orders(order_no,order_price,person_id) values (130,5438,11),(131,6000,12),(132,7000,15),(133,5439,20),(134,5487,19),(135,4000,16),(135,2000,17),(136,2435,12),(137,3000,5)
insert into orders(order_no,order_price,person_id) values (138,2300,18),(139,9000,2),(140,1000,3),(141,2000,5),(142,3500,1),(143,1900,5),(144,1230,7),(145,6000,9),(146,3400,17),(147,7000,13),(148,4200,10),(149,9800,12),(150,1500,15),(151,1300,3),(151,5000,10),(152,7354,14),(153,2376,7),(154,6543,8),(155,5500,2),(156,2300,3)
insert into orders(order_no,order_price,person_id) values (157,3421,5),(158,4235,6),(159,9743,1),(159,4235,7),(160,6750,16),(161,5436,1),(162,5346,3),(163,2300,5),(164,5000,15),(165,1230,10),(166,7635,9),(167,5320,11),(168,2010,4),(169,1600,15),(170,7520,17),(171,2310,1),(172,9650,3),(173,3400,5),(174,2450,4),(175,2387,14),(176,3254,15),(177,7000,7),(178,1000,6),(179,2389,9),(180,8000,8),(181,2370,18),(182,2386,7),(183,4500,9),(184,5009,3),(185,6500,6),(186,5798,11),(187,9262,2),(189,5432,8),(190,2571,1)
insert into orders(order_no,order_price,person_id) values (191,5432,7),(192,2546,2),(193,1800,14),(194,8760,5),(195,8654,6),(196,4200,9),(197,9700,19),(198,9300,1),(199,1500,4),(100,2567,10),(1001,5420,2),(1002,2300,16),(1003,7600,3),(1004,1054,8),(1005,5342,15),(1006,2387,5),(1007,2430,11),(1008,4321,6),(1009,3000,13),(1010,1000,1)
insert into orders(order_no,order_price,person_id) values (1011,1900,4),(1012,3456,1),(1013,1278,20),(1014,5498,19),(1015,1560,18),(1016,4235,16),(1017,7390,11),(1018,5398,15),(1019,6700,13),(1020,2900,20),(1021,2100,2),(1022,2450,5),(1023,8540,7)

select * from orders

copy orders from 'D:\DA9\Sql\orders_data.csv' DELIMITER ',' csv header

select * from orders
