/*
Autor: Joaqu�n Gonz�lez Sordo
Fecha de inicio: 03-11-2022
Proyecto: Base de datos de Videoclub
*/

drop database if exists Videoclub_Sardinero;
CREATE DATABASE Videoclub_Sardinero;

USE Videoclub_Sardinero;
go


drop table if exists Peliculas;
CREATE TABLE Peliculas(
      Codpel char(2),
	  titulo varchar(70) not null unique,
	  genero varchar(20) not null,
	  pais varchar(20),
	  anio smallint,
	  director varchar(40) not null,
	  actorprincipal varchar(40),
	  actrizprincipal varchar(40),
	  numoscars tinyint,
	  productora varchar(40),
     PRIMARY KEY (Codpel)
);



INSERT INTO Peliculas
   VALUES ('VL','Lo que el viento de llev�','Drama','EEUU','1939',
           'Victor Fleming','Clark Gable','Vivien Leigh','8','Metro Goldwin Mayer');
INSERT INTO Peliculas
   VALUES ('CB','Casablanca','Drama','EEUU','1942',
           'Michel Curtiz','Humphrey Bogart','Ingrid Bergman','3','Warner');
INSERT INTO Peliculas
   VALUES ('VZ','Viva Zapata','Drama','EEUU','1952',
           'Elia Kazan','Marlon Brando','Jean Peters','1','20 th centuries');
INSERT INTO Peliculas
   VALUES ('BN','Blancanieves','Infantil','EEUU','1937',
           'Walt Disney','El principe','Blancanieves','1','Disney');
INSERT INTO Peliculas
   VALUES ('BH','Ben Hur','Drama','EEUU','1959',
           'William Wyler','Charlton Heston','','11','Metro Goldwin Mayer');
INSERT INTO Peliculas
   VALUES ('WS','West side story','musical','EEUU','1961',
           'Robert Wise','Richard Beymer','Natalie Wood','10','Seven Arts');
INSERT INTO Peliculas
   VALUES ('LA','Lawrence de Arabia','historica','Reino Unido','1962',
           'David Lean','Peter O Toole','','7','Columbia');
		   
INSERT INTO Peliculas
   VALUES ('SL','Sonrisas y lagrimas','musical','EEUU','1965',
           'Robert Wise','Cristopher Plummer','Julie Andrews','5','20 th centuries');
INSERT INTO Peliculas
   VALUES ('P1','El Padrino','drama','EEUU','1972',
           'Francis Ford Coppola','Marlon Brando','Diane Keaton','3','Paramount');
INSERT INTO Peliculas
   VALUES ('P2','El Padrino 2','drama','EEUU','1974',
           'Francis Ford Coppola','Al Pacino','Diane Keaton','6','Paramount');
INSERT INTO Peliculas
   VALUES ('EG','El golpe','comica','EEUU','1973',
           'George Roy Hill','Paul Newman','','7','Universal');
INSERT INTO Peliculas
   VALUES ('AH','Annie Hall','comica','EEUU','1977',
           'Woody Allen','Woody Allen','Diane Keaton','4','United artists');

INSERT INTO Peliculas
   VALUES ('ET','ET el extraterrestre','ciencia ficcion','EEUU','1982',
           'Steven Spielberg','Henry Thomas','Drew Barrymore','4','Universal');
INSERT INTO Peliculas
   VALUES ('GH','Gandhi','historica','Reino Unido','1982',
           'Richard Attenborough','Ben Kingsley','Rohini Attangadhi','8','Columbia');
INSERT INTO Peliculas
   VALUES ('BL','Bailando con lobos','Western','EEUU','1990',
           'Kevin Costner','Kevin Costner','Mary McDonnell','8','Orion');
INSERT INTO Peliculas
   VALUES ('SC','El silencio de los corderos','Terror','EEUU','1991',
           'Jonathan Demmer','Anthony Hopkins','Jodie Foster','5','Orion');
INSERT INTO Peliculas
   VALUES ('FG','Forrest Gump','Comedia','EEUU','1994',
           'Robert Zemeckis','Tom Hanks','Mary McDonnell','6','Paramount');
INSERT INTO Peliculas
   VALUES ('TT','Titanic','Drama','EEUU','1997',
           'James Cameron','Leonardo di Caprio','Kate Winslet','11','Paramount');

 INSERT INTO Peliculas
   VALUES ('GD','Gladiator','Historica','EEUU','2000',
           'Ridley Scott','Russel Crowe','Connie Nielsen','5','Universal');
 INSERT INTO Peliculas
   VALUES ('S3','El se�or de los anillos el retorno del rey','fantas�a','EEUU','2003',
           'Peter Jackson','Elijah Wood','Liv Tyler','11','New line cinema');
INSERT INTO Peliculas
   VALUES ('LG','Los Goonies','Aventuras','EEUU','1985',
           'Steven Spielberg','Sean Astin','','0','Warner');
INSERT INTO Peliculas
   VALUES ('SM','Superman','Aventuras','EEUU','1978',
           'Richard Donner','Cristopher Reeve','Margot Kidder','1','Warner');
INSERT INTO Peliculas
   VALUES ('G4','Una nueva esperanza','Ciencia ficcion','EEUU','1977',
           'George Lucas','Harrison Ford','Carrie Fisher','7','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G5','El imperio contraataca','Ciencia ficcion','EEUU','1980',
           'George Lucas','Harrison Ford','Carrie Fisher','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G6','El retorno del Jedi','Ciencia ficcion','EEUU','1983',
           'George Lucas','Harrison Ford','Carrie Fisher','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G1','Amenaza fantasma','Ciencia ficcion','EEUU','1999',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G2','El ataque de los clones','Ciencia ficcion','EEUU','2002',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G3','La venganza de los Sith','Ciencia ficcion','EEUU','2005',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('I1','En busca del arca perdida','Aventuras','EEUU','1981',
           'Steven Spielberg','Harrison Ford','Karen Allen','5','Paramount');
INSERT INTO Peliculas
   VALUES ('I2','El templo maldito','Aventuras','EEUU','1984',
           'Steven Spielberg','Harrison Ford','Kate Capshaw','0','Paramount');
INSERT INTO Peliculas
   VALUES ('I3','La ultima cruzada','Aventuras','EEUU','1989',
           'Steven Spielberg','Harrison Ford','Alison Doody','0','Paramount');
INSERT INTO Peliculas
   VALUES ('I4','La calavera de cristal','Aventuras','EEUU','2006',
           'Steven Spielberg','Harrison Ford','Cate Blanchett','0','Paramount');


update Peliculas
  set genero = 'Ciencia ficcion'
    where genero ='ciencia ficcion';
update Peliculas
  set genero = 'Comedia'
    where genero ='comica';
update Peliculas
  set genero = 'Drama'
    where genero ='drama';
	update Peliculas
  set genero = 'Historica'
    where genero ='historica';

INSERT INTO Peliculas
   VALUES ('TS','Tesis','Terror','Espa�a','1996',
           'Alejandro Amenabar','Eduardo Noriega','Ana Torrent','0','Universal');

INSERT INTO Peliculas
   VALUES ('IM','La isla minima','Policiaca','Espa�a','2014',
           'Alberto Rodriguez','Javier Gutierrez','Maria Varod','0','Warner');

INSERT INTO Peliculas
   VALUES ('T1','Torrente','Comedia','Espa�a','1998',
           'Santiago Segura','Santiago Segura','Neus Asensi','0','ADS Service');
INSERT INTO Peliculas
   VALUES ('AM','Amelie','Comedia','Francia','1998',
           'Jean Pierre Jeunet','Audrey Tatou','Mathieu Kassovitz','1','Union Generale');
		   			 		  		  		 	   			   

select * from Peliculas order by 5


drop table if exists Clientes;
CREATE TABLE Clientes(
      Codcli char(3),
	  nombre varchar(20) not null,
	  apellidos varchar(40) not null,
	  direccion varchar(100),
	  ciudad varchar(30),
	  telefono varchar(15),
	  fecha_inscripcion date,
	
     PRIMARY KEY (Codcli)
);



INSERT INTO Clientes
   VALUES ('c01','Juan','Perez','Calle Rosa 3','Santander','456546543','2007-11-18');

INSERT INTO Clientes
   VALUES ('c02','Luisa','Ruiz','Calle Barco 3','Bezana','656546543','2009-10-18');
INSERT INTO Clientes
   VALUES ('c03','Carlos','Suarezs','Calle Golondrina 3','Astillero',
           '656547843','2013-10-18');

INSERT INTO Clientes
   VALUES ('c04','Miguel','Hernandez','Calle Tom�s 3','Santander',
           '656547213','2015-10-18');
INSERT INTO Clientes
   VALUES ('c05','Federico','Lopez','Calle Montes 3','Santander',
           '656547363','2015-08-18');
INSERT INTO Clientes
   VALUES ('c06','Laura','Rodriguez','Avenida Cantabria 7','Santander',
           '656547993','2011-08-18');
INSERT INTO Clientes
   VALUES ('c07','Pedro','Rodriguez','Avenida Constitucion 7','Bezana',
           '656541193','2011-03-18');
INSERT INTO Clientes
   VALUES ('c08','Mar�a','Arganda','Avenida Pereda 7','Santander',
           '656521193','2011-03-12');
	INSERT INTO Clientes
   VALUES ('c09','Iker','Jimenez','Calle Sotileza 1','Bezana',
           '656541223','2011-03-18');
INSERT INTO Clientes
   VALUES ('c10','Irene','Gonzalez','Avenida Mont�s 7','Santander',
           '656520093','2017-03-19');
		   			 		  		  		 	   		

   select * from Clientes


   drop table if exists Distribuidoras;
CREATE TABLE Distribuidoras(
           coddis char(3),
		   nombre varchar(30),
		   Direccon varchar(50),
		   telefono varchar(15),
		   persona_contacto varchar(80),
		   fecha_contrato date,
		PRIMARY KEY (CODDIS)
		);
INSERT INTO Distribuidoras
  VALUES ('d01','Warner','Calle Menchaza 7 Madrid','111111111','Raul','2010-03-01');
INSERT INTO Distribuidoras
  VALUES ('d02','Universal','Calle Albiol 7 Barcelona','222222222','Carlos','2014-03-01');

INSERT INTO Distribuidoras
  VALUES ('d03','Paramount','Calle Victoria 7 Madrid','333333333','Ana','2017-03-01');
INSERT INTO Distribuidoras
  VALUES ('d04','20 th centuries','Calle San Luis 7 Barcelona','444444444','Miguel','2015-03-01');
INSERT INTO Distribuidoras
  VALUES ('d05','Disney','Calle Mayor 7 Bilbao','555555555','Gorka','2018-03-01');
INSERT INTO Distribuidoras
  VALUES ('d06','Columbia','Calle Arroyo 7 Madrid','666666666','Javier','2014-08-01');
INSERT INTO Distribuidoras
  VALUES ('d07','Metro Goldwin Mayer','Calle Santa Teresa 7 Madrid','777777777','Jimena','2019-08-01');
INSERT INTO Distribuidoras
  VALUES ('d08','United artists','Paseo de la Castellana 11 Madrid','888888888','Victor','2020-08-01');





select * from Distribuidoras






   drop table if exists Inventario;
CREATE TABLE Inventario(
      Codpel char(2),
	  numpel int(2),



	
     FOREIGN KEY (Codpel)