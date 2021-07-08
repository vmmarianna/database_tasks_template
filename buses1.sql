create table IF NOT EXISTS points(
  cod_point integer not null,
  name_point varchar(20) not null,
  distance integer not null,
constraint point_pk primary key (cod_point)
);

create table IF NOT EXISTS routes (
  cod_route integer not null,
  name_route varchar(20) not null,
constraint route_pk primary key (Cod_Route)
);

create table IF NOT EXISTS points_routes (
  cod_point integer not null,
  cod_route integer not null,
constraint point_route_pk primary key (cod_point, cod_route),
constraint point_route_point_fk foreign key (cod_point)
 references points(cod_point),
constraint point_route_fk foreign key (cod_route)
 references routes(cod_route)
);

create table IF NOT EXISTS km_prices (
  class integer not null,
  price numeric(4,2) not null,
constraint km_prices_pk primary key (class)
);

create table IF NOT EXISTS models (
  cod_model integer not null,
  name_model varchar(20) not null,
  places integer not null,
  class integer not null,
constraint model_pk primary key (cod_model),
constraint km_prices_fk_class  foreign key (class)
 references km_prices(class)
);

create table IF NOT EXISTS buses (
  cod_bus integer not null,
  bus_number varchar(20) not null,
  cod_model integer not null,
constraint bus_pk primary key (cod_bus),
constraint bus_model_fk foreign key (cod_model)
 references models(cod_model)
);


create table IF NOT EXISTS  trips (
  cod_trip integer not null,
  week_day integer not null,
  hour integer not null,
  minute integer not null,
  tickets integer not null,
  cod_route integer not null,
  cod_bus integer not null,
constraint trip_pk primary key (cod_trip),
constraint trip_bus_fk foreign key (cod_bus)
 references buses(cod_bus),
constraint trip_route_fk foreign key (cod_route)
 references routes(cod_route)
);

Insert into KM_PRICES (CLASS,PRICE) values ('1','0.8');
Insert into KM_PRICES (CLASS,PRICE) values ('2','0.9');
Insert into KM_PRICES (CLASS,PRICE) values ('21','5.12');
Insert into KM_PRICES (CLASS,PRICE) values ('22','5.13');

Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('1','Икарус','34','2');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('2','Газель','24','1');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('3','ЛАЗ','38','1');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('4','ПАЗ','32','2');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('5','Мерседес','38','2');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('6','Соболь','21','2');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('7','Волга','4','2');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('8','Икарус с прицепом','50','1');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('21','Пепелац-1','15','21');
Insert into MODELS (COD_MODEL,NAME_MODEL,PLACES,CLASS) values ('22','Пепелац-2','15','22');

Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('1','АА 510 11','1');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('2','АА 452 35','2');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('3','СС 407 11','4');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('4','ДД 895 35','2');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('5','ВВ 927 11','2');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('6','ВВ 395 11','3');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('7','СС 136 35','4');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('8','СС 697 11','1');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('9','СУ 213 11','5');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('11','АК 2708','1');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('12','КА 8072','6');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('401','AA 354 B','7');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('402','A 001 AA','8');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('521','PEP1-A','21');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('522','PEP1-B','21');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('523','PEP2-A','22');
Insert into BUSES (COD_BUS,BUS_NUMBER,COD_MODEL) values ('524','PEP2-B','22');

Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('1','Сосновка','24');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('2','Нестерово','58');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('3','Чебсара','66');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('4','Шексна','85');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('5','Демидово','99');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('6','Крылово','160');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('7','Белозерск','211');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('8','Царева','109');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('9','Суда','155');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('10','Им.Желябово','224');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('11','Устюжна','245');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('12','Череповец','135');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('13','Сазаново','320');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('14','Чагода','320');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('15','Майский','15');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('16','Молочное','15');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('17','Новленское','60');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('18','Никольский торжок','103');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('19','Кириллов','127');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('20','Фофанцево','18');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('21','Сокол','39');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('22','Кадников','45');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('23','Чешкино','69');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('24','Великий двор','87');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('25','Погорелово','106');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('26','Жилино','151');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('27','Тотьма','204');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('28','Им.Бабушкина','239');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('29','Сямжа','117');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('30','Верховажье','221');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('31','Грязовец','50');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('32','Липин Бор','178');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('33','Малые висюки','25');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('34','Березай','999');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('121','Близюково','13');
Insert into POINTS (COD_POINT,NAME_POINT,DISTANCE) values ('122','Далеково','14');

Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('1','Вологда-Шексна');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('2','Вологда-Череповец');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('3','Вологда-Устюжна');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('4','Вологда-Чагода');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('5','Вологда-Кириллов');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('6','Вологда-Сокол');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('7','Вологда-Тотьма');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('8','Вологда-Верховажье');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('9','Вологда-Грязовец');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('10','Вологда-Белозерск');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('11','Вологда-Меркурий');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('12','Вологда-Малые Висюки');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('21','Вологда-Близюково');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('22','Вологда-Далёково');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('41','Вологда-Сокол v2');
Insert into ROUTES (COD_ROUTE,NAME_ROUTE) values ('42','Вологда-Сокол v3');

Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('1','1');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('1','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('1','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('1','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('1','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('2','1');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('2','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('2','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('2','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('2','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('3','1');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('3','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('3','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('3','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('3','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('4','1');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('4','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('4','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('4','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('4','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('5','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('5','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('5','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('5','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('6','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('7','10');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('8','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('8','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('8','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('9','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('9','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('10','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('10','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('11','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('12','2');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('13','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('14','4');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('15','5');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('16','5');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('17','5');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('18','5');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('19','5');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('20','6');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('20','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('20','8');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('21','6');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('21','41');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('21','42');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('22','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('23','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('24','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('25','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('26','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('27','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('28','7');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('29','8');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('30','8');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('31','9');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('33','3');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('33','12');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('121','21');
Insert into POINTS_ROUTES (COD_POINT,COD_ROUTE) values ('122','22');

Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('1','6','19','8','2','9','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('2','4','14','16','2','6','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('3','2','7','44','18','7','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('4','7','19','56','29','10','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('5','5','14','52','29','7','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('6','2','10','6','2','1','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('7','6','18','20','4','6','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('8','1','8','9','29','9','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('9','2','14','7','7','5','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('10','1','16','47','8','3','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('11','7','9','14','7','4','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('12','4','6','26','2','10','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('13','4','11','8','4','9','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('14','5','8','52','4','9','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('15','5','7','29','8','1','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('16','6','15','33','2','5','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('17','3','9','21','23','3','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('18','7','11','23','23','1','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('19','1','15','32','18','1','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('20','6','8','19','11','4','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('21','4','10','52','23','8','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('22','1','6','51','4','9','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('23','4','12','40','23','3','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('24','6','11','31','4','3','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('25','7','10','29','4','4','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('26','2','18','37','4','4','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('27','5','7','49','18','3','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('28','5','11','23','8','2','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('29','4','18','47','4','7','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('30','3','11','53','11','6','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('31','3','6','36','23','9','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('32','7','12','42','18','4','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('33','5','16','56','11','8','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('34','1','6','1','4','7','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('35','7','18','21','8','1','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('36','3','15','52','2','3','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('37','7','7','38','4','10','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('38','7','6','17','2','10','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('39','3','20','5','2','1','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('40','3','19','51','8','7','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('41','5','11','44','11','9','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('42','4','12','13','4','8','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('43','7','12','49','18','10','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('44','7','15','58','11','10','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('45','1','11','58','4','8','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('46','7','8','14','2','10','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('47','4','10','15','11','10','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('48','6','15','3','7','2','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('49','3','20','43','2','9','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('50','7','20','40','2','1','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('51','1','19','14','11','7','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('52','1','9','54','29','1','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('53','3','20','31','4','10','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('54','6','10','28','11','1','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('55','1','6','56','18','8','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('56','7','10','55','4','4','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('57','6','10','9','18','2','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('58','4','11','30','2','10','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('59','5','6','2','7','8','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('60','7','16','1','2','3','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('61','6','20','41','18','10','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('62','6','18','34','23','6','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('63','4','6','14','2','3','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('64','7','12','53','4','5','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('65','5','19','31','4','1','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('66','1','19','37','2','8','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('67','7','7','52','4','1','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('68','3','7','1','8','7','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('69','5','19','31','8','2','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('70','4','6','26','4','6','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('71','3','11','54','7','8','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('72','3','6','35','23','6','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('73','5','17','40','23','5','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('74','7','11','19','18','3','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('75','2','7','48','4','10','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('76','6','12','34','8','5','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('77','4','9','57','29','7','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('78','7','12','53','7','7','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('79','5','17','47','18','4','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('80','7','18','55','4','5','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('81','1','9','31','4','5','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('82','6','7','19','4','4','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('83','4','14','48','2','6','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('84','3','16','7','2','4','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('85','7','7','5','2','1','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('86','6','7','40','2','10','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('87','2','13','46','4','1','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('88','7','7','6','7','10','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('89','3','19','26','18','5','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('90','5','7','30','2','5','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('91','7','17','2','4','6','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('92','1','20','36','4','1','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('93','6','10','50','4','2','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('94','7','14','53','2','7','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('95','3','8','59','4','8','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('96','4','17','12','4','6','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('97','6','6','28','4','10','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('98','4','14','44','18','7','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('99','3','19','22','8','8','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('100','7','19','58','8','4','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('101','5','14','38','29','5','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('102','3','10','47','11','8','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('103','4','16','37','23','6','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('104','3','17','25','7','9','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('105','5','19','48','29','1','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('106','5','7','51','11','8','8');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('107','5','11','44','2','2','9');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('108','4','12','45','23','8','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('109','3','7','26','8','3','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('110','5','10','9','7','2','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('111','1','8','15','5','6','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('112','1','10','10','15','6','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('113','1','8','20','20','6','7');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('114','5','12','20','15','2','4');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('115','1','10','10','10','2','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('116','1','19','20','19','2','2');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('119','5','10','9','5','1','5');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('118','5','10','9','5','1','6');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('120','1','20','36','1','12','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('121','1','6','1','1','12','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('141','6','13','0','4','21','401');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('142','5','12','21','10','22','402');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('161','5','22','0','15','41','1');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('162','5','22','1','14','42','3');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('181','5','22','0','10','41','521');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('182','5','17','59','11','42','521');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('183','5','18','1','12','41','521');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('184','5','22','0','10','41','522');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('185','5','22','1','14','42','523');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('186','5','22','0','10','41','523');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('187','5','17','59','10','42','522');
Insert into TRIPS (COD_TRIP,WEEK_DAY,HOUR,MINUTE,TICKETS,COD_ROUTE,COD_BUS) values ('188','5','18','0','13','41','522');
