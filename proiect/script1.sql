create table Aeroport (
idAeroport int,
numeAeroport varchar(100),
orasAeroport varchar(100),
taraAeroport varchar(100),
constraint aeroport_idAeroport_pk primary key (idAeroport)
);

create table Persoana (
idPersoana int,
numePersoana varchar(100),
emailPersoana varchar(100),
parolaPersoana varchar(65),
constraint persoana_idPersoana_pk primary key (idPersoana)
);

create table Zbor (
idZbor int,
idAeroportPlecare int,
idAeroportSosire int,
oraPlecare time,
durataOre int,
durataMin int,
pret int,
companie varchar(100),
constraint zbor_idZbor_pk primary key (idZbor),
constraint zbor_idAeroportPlecare_fk foreign key (idAeroportPlecare) references Aeroport(idAeroport),
constraint zbor_idAeroportSosire_fk foreign key (idAeroportSosire) references Aeroport(idAeroport)
);

insert into Aeroport values (1, "Aeroportul International Henri Coanda", "Bucuresti", "Romania");
insert into Aeroport values (2, "Heathrow", "Londra", "Anglia");
insert into Aeroport values (3, "Charles de Gaulle​", "Paris", "Franta");
insert into Aeroport values (4, "Schiphol", "Amsterdam", "Olanda");
insert into Aeroport values (5, "Barajas", "Madrid", "Spania");
insert into Aeroport values (6, "Munchen Airport", "Munchen", "Germania");
insert into Aeroport values (7, "Aeroportul International Denver", "Denver", "Statele Unite ale Americii - Colorado");
insert into Aeroport values (8, "Aeroportul International Orlando", "Orlando", "Statele Unite ale Americii - Florida");
insert into Aeroport values (9, "Aeroportul International San Francisco", "San Francisco", "Statele Unite ale Americii - California");
insert into Aeroport values (10, "Aeroportul internațional Dubai", "Dubai", "Emiratele Arabe Unite");

insert into Persoana values (1, "Mihnea Teodor Circiu", "circiumihnea@gmail.com", "parola1");
insert into Persoana values (2, "Raul Gorgan", "raulgorgan@gmail.com", "parola2");
insert into Persoana values (3, "Mihai Cociubei", "mihaicociubei@gmail.com", "parola3");

insert into Zbor values (1, 1, 2, "15:35", 3,25, 25, "Blue Air");
insert into Zbor values (18, 2, 1, "18:50", 3,25, 25, "Ryanair");
insert into Zbor values (2, 1, 5, "19:05", 4,4, 105, "Ryanair");
insert into Zbor values (19, 5, 1, "18:55", 3,49, 13, "Blue Air");
insert into Zbor values (3, 1, 10, "22:50", 4,55, 140, "FlyDubai");
insert into Zbor values (20, 10, 1, "09:35", 4,55, 140, "FlyDubai");
insert into Zbor values (4, 1, 3, "08:25", 2,10, 22, "Tarom");
insert into Zbor values (21, 3, 1, "08:55", 2,10, 22, "Wizz Air");
insert into Zbor values (5, 1, 4, "09:00", 3,0, 120, "Blue Air");
insert into Zbor values (22, 4, 1, "12:00", 3,0, 120, "Blue Air");
insert into Zbor values (6, 2, 5, "18:45", 2,19, 55, "Iberia");
insert into Zbor values (23, 5, 2, "06:50", 2,30, 15, "Ryanair");
insert into Zbor values (7, 2, 9, "13:35", 10,50, 460, "United Airlines");
insert into Zbor values (24, 9, 2, "16:00", 10,50, 450, "Virgin Atlantic");
insert into Zbor values (8, 2, 7, "11:30", 9,55, 565, "British Airways");
insert into Zbor values (25, 7, 2, "16:30", 9,5, 495, "Finnair");
insert into Zbor values (9, 3, 4, "14:30", 1,20, 187, "Air France");
insert into Zbor values (26, 4, 3, "12:25", 1,20, 118, "Klm Cityhopper");
insert into Zbor values (10, 3, 6 , "13:30", 1, 25, 65, "Lufthansa");
insert into Zbor values (27, 6, 3 , "16:20", 1, 25, 81, "Lufthansa");
insert into Zbor values (11, 3, 5, "17:35", 2, 4, 45, "Ryanair" );
insert into Zbor values (28, 5, 3, "20:00", 2, 10, 40, "Transavia" );
insert into Zbor values (12, 4, 6, "07:45", 1, 25, 139, "Klm Cityhopper");
insert into Zbor values (29, 6, 4, "21:00", 1, 35, 106, "Lufthansa");
insert into Zbor values (13, 5, 8, "15:25", 14, 0, 406, "Air Eruope" );
insert into Zbor values (30, 8, 4, "12:12", 14, 15, 235, "Spirit Airlines" );
insert into Zbor values (14, 6, 9, "11:55", 11, 45, 495, "United Airlines");
insert into Zbor values (31, 9, 6, "16:40", 13, 0, 455, "TAP Air Portugal");
insert into Zbor values (15, 9, 7, "00:59", 2, 32, 40, "Frontier Airlines");
insert into Zbor values (32, 7, 9, "22:07", 2, 55, 40, "Frontier Airlines");
insert into Zbor values (16, 7, 8, "00:52", 3, 36, 60, "Frontier Airlines");
insert into Zbor values (33, 8, 7, "21:29", 4, 10, 60, "Frontier Airlines");
insert into Zbor values (17, 6, 10, "22:35", 6, 5, 383, "Lufthansa");
insert into Zbor values (34, 10, 6, "08:40", 6, 50, 503, "Emirates");
