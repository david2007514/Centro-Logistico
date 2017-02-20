create table admin
(
cc int not null,
nombre char(40) not null,
contraseña int not null,
primary key(cc)
);


create table instructor 
(
cc int not null,
nombre char(40) not null,
contraseña int not null,
primary key(cc)
);

create table elemento
(
id char(20) not null,
nombre char(50) not null,
cant int not null,
estado nchar(1) not null,
nota char(200) null
primary key(id)
);
    
create table prestamo
(
ccAdmin int not null,
ccInstructor int not null,
idElemento char(20) not null,
fechaPrestamo date not null,
fechaDevolucion date null
primary key(ccAdmin,ccInstructor,idElemento)
foreign key(ccAdmin) references admin(cc),
foreign key(ccInstructor) references instructor(cc),
foreign key(idElemento) references elemento(id)
);



insert into admin values(1031161820,'andres david rodriguez',1234);
insert into admin values(1032161860,'alejandro ramirez',8976);
insert into admin values(1052161820,'karen vasquez',2380);

insert into instructor values(1031153819,'carol patricia ortiz',0000);
insert into instructor values(1031123719,'sandra riaño',0043);
insert into instructor values(1031453899,'julieta vanegas',9090);

insert into elemento values('hsb378gj87','portatil',1,'s','rayadura parte inferior');
insert into elemento values('8gj87','proyector',2,'s','');
insert into elemento values('hsb378g','antena',10,'s','');
insert into prestamo values(1031161820,1031153819,'hsb378gj87','20/02/17','');
update prestamo 
set fechaDevolucion='' 
where idElemento='hsb378gj87';

drop table admin;
drop table instructor;
drop table elemento;
drop table prestamo;

select * from elemento
where id = 'hsb378gj87';          



select * from admin;
select * from instructor;
select * from elemento;
select * from prestamo;