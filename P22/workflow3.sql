---base de datos flujo_cei
create table flujoproceso_cei
(
flujo varchar(3),
proceso varchar(3),
tipo varchar(1),
rol varchar (15),
procesosiguiente varchar(5),
formulario varchar(20)
);

create table flujocondicionante_cei
(
flujo varchar(3),
proceso varchar(3),
si varchar(3),
no varchar(3)
);

create table usuarios_cei
(
	usuario varchar(10),
	contrasenia varchar(10),
	rol varchar(10)
);

create table seguimiento_cei
(
notramite integer,
usuario varchar(10),
flujo varchar(3),
proceso varchar(3),
fechainicio datetime,
fechafin datetime
);

insert into flujoproceso_cei values('F1','P1','I','Frente','P2','convocatoria');
insert into flujoproceso_cei values('F1','P2','P','Frente','P3','datosfrente');
insert into flujoproceso_cei values('F1','P3','D','Frente','P4','listafrente');
insert into flujoproceso_cei values('F1','P4','C','CEI',null,'verificadoc');
insert into flujoproceso_cei values('F1','P5','F','CEI',null,'admitido');
insert into flujoproceso_cei values('F1','P6','F','CEI',null,'rechazado');

insert into flujocondicionante_cei values('F1','P4','P5','P6');

--C=Comite Electoral F=Frente
insert into usuarios_cei values ('frente1','frente1','F');
insert into usuarios_cei values ('frente2','frente2','F');
insert into usuarios_cei values ('frente3','frente3','F');
insert into usuarios_cei values ('frente4','frente4','F');
insert into usuarios_cei values ('cei','123456','C');

insert into seguimiento_cei values(101,'frente1','F1','P1','2021/12/01 08:00','2021/12/01 08:30');
insert into seguimiento_cei values(101,'frente1','F1','P2','2021/12/01 08:30','2021/12/01 11:00');
insert into seguimiento_cei values(101,'frente1','F1','P3','2021/12/01 11:00','2021/12/01 12:00');
insert into seguimiento_cei values(101,'cei','F1','P4','2021/12/01 12:00','2021/12/01 15:00');
insert into seguimiento_cei values(101,'cei','F1','P5','2021/12/01 16:00','2021/12/01 16:30');
insert into seguimiento_cei values(102,'frente2','F1','P1','2021/12/02 10:00','2021/12/01 10:30');
insert into seguimiento_cei values(102,'frente2','F1','P2','2021/12/02 11:00',null);
insert into seguimiento_cei values(103,'frente3','F1','P1','2021/12/02 16:00',null);
insert into seguimiento_cei values(104,'frente4','F1','P1','2021/12/04 08:00','2021/12/04 08:30');
insert into seguimiento_cei values(104,'frente4','F1','P2','2021/12/04 08:30','2021/12/04 11:00');
insert into seguimiento_cei values(104,'frente4','F1','P3','2021/12/04 14:00',null);

---base de datos frentes_cei
create table frentes
(
    idfrente integer,
    nombrefrente varchar(30),
	logotipo varchar(100),
	fechacreacion date
);
create table delegados
(
	ci integer,
	matricula integer,
	carrera varchar(30),
	nombreestudiante varchar(50),
	nombrefrente varchar(30)
);
insert into frentes values(1,'frente1','logofrente1','2021/12/01');
insert into frentes values(2,'frente2','logofrente2','2021/12/02');
insert into frentes values(3,'frente3','logofrente3','2021/12/03');
insert into frentes values(4,'frente4','logofrente4','2021/12/04');


insert into delegados values(123456,123456,'Informatica','Camilo Sesto','frente1');
insert into delegados values(111111,111111,'Estadistica','Jose Luis Rodriguez','frente2');
insert into delegados values(222222,222222,'Informatica','Laura Pausini','frente3');
insert into delegados values(333333,333333,'Matematica','Roberto Carlos','frente4');
