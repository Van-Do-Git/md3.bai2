create table customer(
cID int auto_increment primary key,
cName varchar(255) not null,
cAge int not null);
create table oder(
oID int auto_increment primary key,
cID int not null,
foreign key(cID) references customer(cID),
oDate datetime not null,
oTotalPrice int not null
);
create table products(
pID int auto_increment primary key,
pName varchar(255) not null,
pPrice int not null
);
create table oder_detail(
pID int not null,
oID int not null,
primary key(pID,oID),
foreign key (pID) references products(pID),
foreign key (oID) references oder(oID)
);