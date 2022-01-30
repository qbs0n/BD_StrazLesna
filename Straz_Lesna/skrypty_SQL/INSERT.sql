﻿--------------------------------ADRESY-------------------------------------------------
insert into adresy values(1,'Staszów','Nowa',15,NULL);
insert into adresy values(2,'Staszów','11 listopada',10,NULL);
insert into adresy values(3,'Osiek','Rynek',23,NULL);
insert into adresy values(4,'Kielce','Rynek',12,NULL);
insert into adresy values(5,'Osiek','Osiedlowa',7,NULL);
insert into adresy values(6,'Staszów','Langiweicza',5,12);
insert into adresy values(7,'Staszów','Langiewicza',7,2);
insert into adresy values(8,'Staszów','Szkolna',33,NULL);
insert into adresy values(9,'Osiek','Suchowola',23,NULL);
insert into adresy values(10,'Osiek','Suchowola',113,NULL);
insert into adresy values(11,'Osiek','Rynek',6,NULL);
insert into adresy values(12,'Osiek','Suchowola',210,NULL);
insert into adresy values(13,'Kielce','Pomorska',14,NULL);
insert into adresy values(14,'Raków','Słoneczna',15,NULL);
insert into adresy values(15,'Osiek','Suchowola',87,NULL);
-----------------------------------EKWIPUNEK--------------------------------------------
insert into ekwipunek values(1,'noż',20);
insert into ekwipunek values(2,'mapa',20);
insert into ekwipunek values(3,'strzelba',10);
insert into ekwipunek values(4,'kompas',16);
insert into ekwipunek values(5,'apteczka',25);
insert into ekwipunek values(6,'latarka',20);
insert into ekwipunek values(7,'lornetka',12);
insert into ekwipunek values(8,'plecak',30);
insert into ekwipunek values(9,'mundur',20);
insert into ekwipunek values(10,'karabin snajperski',5);
insert into ekwipunek values(11,'pistolet',15);
insert into ekwipunek values(12,'granat dymny',40);
insert into ekwipunek values(13,'granat hukowy',20);
insert into ekwipunek values(14,'gwizdek',20);
insert into ekwipunek values(15,'scyzoryk',10);
----------------------------------REJONY-----------------------------------------------
insert into rejony values(1,'Suchowola',2.5);
insert into rejony values(2,'Osiek',6.5);
insert into rejony values(3,'Bukowa',4.5);
insert into rejony values(4,'Wiązownica',5.2);
insert into rejony values(5,'Staszów',12.8);
insert into rejony values(6,'Pliskowola',3.22);
insert into rejony values(7,'Sulisławice',12.33);
insert into rejony values(8,'Ruszcza-Kolonia',4.11);
insert into rejony values(9,'Świniary',1.54);
insert into rejony values(10,'Otoka',12.44);
insert into rejony values(11,'Kąty',1.79);
insert into rejony values(12,'Łoniów',11.23);
insert into rejony values(13,'Wnorów',3.35);
insert into rejony values(14,'Wojcieszyce',3.46);
insert into rejony values(15,'Suliszów',4.25);
-------------------------------RODZAJE_INC----------------------------------------
insert into rodzaje_inc values(1,'pożar',3);
insert into rodzaje_inc values(2,'wycinka',1);
insert into rodzaje_inc values(3,'kradzież',1);
insert into rodzaje_inc values(4,'śmiecenie',1);
insert into rodzaje_inc values(5,'atak zwierząt',2);
insert into rodzaje_inc values(6,'zguba',1);
insert into rodzaje_inc values(7,'zaginięcie',3);
insert into rodzaje_inc values(8,'wypadek',1);
insert into rodzaje_inc values(9,'wejscie na zakazany teren',1);
insert into rodzaje_inc values(10,'kusownictwo',2);
insert into rodzaje_inc values(11,'niszczenie przyrody',1);
insert into rodzaje_inc values(12,'nielegalne wysypisko',2);
insert into rodzaje_inc values(13,'zagłuszanie spokoju',1);
insert into rodzaje_inc values(14,'nielegalna wycieczka',1);
insert into rodzaje_inc values(15,'rozpalanie ognia',3);
-------------------------------STANOWISKO-------------------------------------------
insert into stanowisko values(1,'gajowy',4000);
insert into stanowisko values(2,'podleśniczy',4500);
insert into stanowisko values(3,'strażnik leśny',4500);
insert into stanowisko values(4,'leśniczy',5000);
insert into stanowisko values(5,'starszy strażnik leśny',5300);
insert into stanowisko values(6,'inżynier w nadleśnictwie',6000);
insert into stanowisko values(7,'specjalista Służby Leśnej',6600);
insert into stanowisko values(8,'inspektor Lasów Państwowych',6000);
insert into stanowisko values(9,'inspektor Straży Leśnej',6000);
insert into stanowisko values(10,'zastępca nadleśniczego',6500);
insert into stanowisko values(11,'księgowy nadleśnictwa',6000);
insert into stanowisko values(12,'naczelnik wydziału',7000);
insert into stanowisko values(13,'nadleśniczy',6900);
insert into stanowisko values(14,'specjalista Służby Leśnej',7000);
insert into stanowisko values(15,'główny inspektor Straży',7500);
-----------------------------ZATRUDNIENIEA------------------------------------------
insert into zatrudnienia values(1, TO_DATE('03-01-2016', 'DD-MM-YYYY'));
insert into zatrudnienia values(2, TO_DATE('07-05-2012', 'DD-MM-YYYY'));
insert into zatrudnienia values(3, TO_DATE('23-11-2016', 'DD-MM-YYYY'));
insert into zatrudnienia values(4, TO_DATE('08-01-2019', 'DD-MM-YYYY'));
insert into zatrudnienia values(5, TO_DATE('13-08-2020', 'DD-MM-YYYY'));
insert into zatrudnienia values(6, TO_DATE('03-11-2021', 'DD-MM-YYYY'));
insert into zatrudnienia values(7, TO_DATE('29-04-2021', 'DD-MM-YYYY'));
insert into zatrudnienia values(8, TO_DATE('12-04-2020', 'DD-MM-YYYY'));
insert into zatrudnienia values(9, TO_DATE('15-06-2019', 'DD-MM-YYYY'));
insert into zatrudnienia values(10, TO_DATE('19-09-2020', 'DD-MM-YYYY'));
insert into zatrudnienia values(11, TO_DATE('01-10-2018', 'DD-MM-YYYY'));
insert into zatrudnienia values(12, TO_DATE('09-12-2021', 'DD-MM-YYYY'));
insert into zatrudnienia values(13, TO_DATE('10-05-2020', 'DD-MM-YYYY'));
insert into zatrudnienia values(14, TO_DATE('11-02-2020', 'DD-MM-YYYY'));
insert into zatrudnienia values(15, TO_DATE('17-06-2018', 'DD-MM-YYYY'));
--------------------------ZMIANA----------------------------------------------------
insert into zmiana values(1,to_date('10:00', 'HH24:MI'),to_date('18:00', 'HH24:MI'),'dzien');
insert into zmiana values(2,to_date('8:00', 'HH24:MI'),to_date('16:00', 'HH24:MI'),'dzien');
insert into zmiana values(3,to_date('7:00', 'HH24:MI'),to_date('15:00', 'HH24:MI'),'dzien');
insert into zmiana values(4,to_date('6:00', 'HH24:MI'),to_date('14:00', 'HH24:MI'),'dzien');
insert into zmiana values(5,to_date('6:00', 'HH24:MI'),to_date('16:00', 'HH24:MI'),'dzien');
insert into zmiana values(6,to_date('6:00', 'HH24:MI'),to_date('14:00', 'HH24:MI'),'dzien');
insert into zmiana values(7,to_date('16:00', 'HH24:MI'),to_date('00:00', 'HH24:MI'),'noc');
insert into zmiana values(8,to_date('18:00', 'HH24:MI'),to_date('2:00', 'HH24:MI'),'noc');
insert into zmiana values(9,to_date('20:00', 'HH24:MI'),to_date('4:00', 'HH24:MI'),'noc');
insert into zmiana values(10,to_date('23:00', 'HH24:MI'),to_date('7:00', 'HH24:MI'),'noc');
insert into zmiana values(11,to_date('00:00', 'HH24:MI'),to_date('8:00', 'HH24:MI'),'noc');
insert into zmiana values(12,to_date('6:00', 'HH24:MI'),to_date('18:00', 'HH24:MI'),'dzien');
insert into zmiana values(13,to_date('8:00', 'HH24:MI'),to_date('20:00', 'HH24:MI'),'dzien');
insert into zmiana values(14,to_date('12:00', 'HH24:MI'),to_date('00:00', 'HH24:MI'),'dzien');
insert into zmiana values(15,to_date('20:00', 'HH24:MI'),to_date('8:00', 'HH24:MI'),'noc');
----------------------------------OSOBY----------------------------------------------
insert into osoby values(1,'Marek','Nowak',29,1);
insert into osoby values(2,'Arek','Wilk',23,2);
INSERT INTO Osoby VALUES(3,'Krzysztof','Kowalski',35,3);
INSERT INTO Osoby VALUES(4,'Tadeusz','Maliniak',31,4);
INSERT INTO Osoby VALUES(5,'Karol','Wojciechowski',50,5);
INSERT INTO Osoby VALUES(6,'Maciej','Radecki',27,6);
INSERT INTO Osoby VALUES(7,'Paweł','Gruszczyński',29,7);
INSERT INTO Osoby VALUES(8,'Paweł','Laprus',34,8);
INSERT INTO Osoby VALUES(9,'Robert','Słoma',45,9);
INSERT INTO Osoby VALUES(10,'Albert','Drozdowski',29,10);
INSERT INTO Osoby VALUES(11,'Henryk','Bista',32,11);
INSERT INTO Osoby VALUES(12,'Marek','Makuszyński',38,12);
INSERT INTO Osoby VALUES(13,'Zbigniew','Michta',26,13);
INSERT INTO Osoby VALUES(14,'Bronisław','Borewicz',36,14);
INSERT INTO Osoby VALUES(15,'Bogdan','Smoleń',47,15);
------------------------------POSTERUNKI------------------------------------------------
insert into posterunki values(1,4,TO_DATE('19-06-2000', 'DD-MM-YYYY'),1);
insert into posterunki values(2,2,TO_DATE('17-09-2002', 'DD-MM-YYYY'),2);
insert into posterunki values(3,6,TO_DATE('18-06-1994', 'DD-MM-YYYY'),3);
insert into posterunki values(4,4,TO_DATE('11-07-2000', 'DD-MM-YYYY'),4);
insert into posterunki values(5,8,TO_DATE('22-03-2004', 'DD-MM-YYYY'),5);
insert into posterunki values(6,4,TO_DATE('25-12-2001', 'DD-MM-YYYY'),6);
insert into posterunki values(7,6,TO_DATE('07-09-2000', 'DD-MM-YYYY'),7);
insert into posterunki values(8,4,TO_DATE('22-04-2004', 'DD-MM-YYYY'),8);
insert into posterunki values(9,12,TO_DATE('10-09-2001', 'DD-MM-YYYY'),9);
insert into posterunki values(10,7,TO_DATE('03-02-1998', 'DD-MM-YYYY'),10);
insert into posterunki values(11,9,TO_DATE('12-09-2000', 'DD-MM-YYYY'),11);
insert into posterunki values(12,3,TO_DATE('27-08-1999', 'DD-MM-YYYY'),12);
insert into posterunki values(13,8,TO_DATE('29-11-2000', 'DD-MM-YYYY'),13);
insert into posterunki values(14,6,TO_DATE('05-12-1998', 'DD-MM-YYYY'),14);
insert into posterunki values(15,3,TO_DATE('22-04-2003', 'DD-MM-YYYY'),15);
------------------------------PRACOWNICY---------------------------------------------------
insert into pracownicy values(1,1,1,1,1,1);
insert into pracownicy values(2,2,2,2,2,2);
insert into pracownicy values(3,3,3,3,3,3);
insert into pracownicy values(4,4,4,4,4,4);
insert into pracownicy values(5,5,5,5,5,5);
insert into pracownicy values(6,6,6,6,6,6);
insert into pracownicy values(7,7,7,7,7,7);
insert into pracownicy values(8,8,8,8,8,8);
insert into pracownicy values(9,9,9,9,9,9);
insert into pracownicy values(10,10,10,10,10,10);
insert into pracownicy values(11,11,11,11,11,11);
insert into pracownicy values(12,12,12,12,12,12);
insert into pracownicy values(13,13,13,13,13,13);
insert into pracownicy values(14,14,14,14,14,14);
insert into pracownicy values(15,15,15,15,15,15);
-------------------------------INCYDENTY-------------------------------------------------
insert into incydenty values(1,TO_DATE('05-12-2021', 'DD-MM-YYYY'),3,3);
insert into incydenty values(2,TO_DATE('11-10-2021', 'DD-MM-YYYY'),3,7);
insert into incydenty values(3,TO_DATE('09-11-2021', 'DD-MM-YYYY'),1,15);
insert into incydenty values(4,TO_DATE('05-09-2021', 'DD-MM-YYYY'),5,6);
insert into incydenty values(5,TO_DATE('08-05-2021', 'DD-MM-YYYY'),8,3);
insert into incydenty values(6,TO_DATE('17-03-2021', 'DD-MM-YYYY'),14,5);
insert into incydenty values(7,TO_DATE('15-12-2021', 'DD-MM-YYYY'),5,8);
insert into incydenty values(8,TO_DATE('05-12-2021', 'DD-MM-YYYY'),9,11);
insert into incydenty values(9,TO_DATE('25-10-2021', 'DD-MM-YYYY'),7,4);
insert into incydenty values(10,TO_DATE('08-10-2021', 'DD-MM-YYYY'),7,13);
insert into incydenty values(11,TO_DATE('06-05-2021', 'DD-MM-YYYY'),11,2);
insert into incydenty values(12,TO_DATE('22-11-2021', 'DD-MM-YYYY'),9,1);
insert into incydenty values(13,TO_DATE('17-07-2021', 'DD-MM-YYYY'),1,8);
insert into incydenty values(14,TO_DATE('19-05-2021', 'DD-MM-YYYY'),2,14);
insert into incydenty values(15,TO_DATE('02-03-2021', 'DD-MM-YYYY'),7,1);
---------------------------------LASY--------------------------------------------------
insert into lasy values(1,'panstwowy','iglasty',10,1);
insert into lasy values(2,'panstwowy','iglasty',12,2);
insert into lasy values(3,'panstwowy','iglasty',17,3);
insert into lasy values(4,'panstwowy','iglasty',8,4);
insert into lasy values(5,'panstwowy','iglasty',22,5);
insert into lasy values(6,'panstwowy','iglasty',14,6);
insert into lasy values(7,'panstwowy','iglasty',7,7);
insert into lasy values(8,'panstwowy','lisciasty',18,8);
insert into lasy values(9,'panstwowy','lisciasty',14,9);
insert into lasy values(10,'panstwowy','lisciasty',18,10);
insert into lasy values(11,'panstwowy','mieszany',12,11);
insert into lasy values(12,'panstwowy','lisciasty',7,12);
insert into lasy values(13,'panstwowy','mieszany',15,13);
insert into lasy values(14,'panstwowy','mieszany',5,14);
insert into lasy values(15,'panstwowy','mieszany',4,15);
------------------------------------EKWIPUNEK_POSTERUNKU------------------------------
insert into ekwipunek_posterunku values(1,3);
insert into ekwipunek_posterunku values(1,2);
insert into ekwipunek_posterunku values(1,4);
insert into ekwipunek_posterunku values(1,7);
insert into ekwipunek_posterunku values(1,8);
insert into ekwipunek_posterunku values(1,9);
insert into ekwipunek_posterunku values(2,3);
insert into ekwipunek_posterunku values(2,6);
insert into ekwipunek_posterunku values(2,7);
insert into ekwipunek_posterunku values(2,8);
insert into ekwipunek_posterunku values(3,5);
insert into ekwipunek_posterunku values(3,2);
insert into ekwipunek_posterunku values(3,1);
insert into ekwipunek_posterunku values(3,7);
insert into ekwipunek_posterunku values(3,6);
insert into ekwipunek_posterunku values(4,2);
insert into ekwipunek_posterunku values(4,1);
insert into ekwipunek_posterunku values(4,11);
insert into ekwipunek_posterunku values(4,6);
insert into ekwipunek_posterunku values(4,8);
insert into ekwipunek_posterunku values(4,7);
insert into ekwipunek_posterunku values(5,2);
insert into ekwipunek_posterunku values(5,3);
insert into ekwipunek_posterunku values(5,12);
insert into ekwipunek_posterunku values(6,6);
insert into ekwipunek_posterunku values(6,4);
insert into ekwipunek_posterunku values(6,7);
insert into ekwipunek_posterunku values(7,9);
insert into ekwipunek_posterunku values(6,9);
insert into ekwipunek_posterunku values(8,3);
insert into ekwipunek_posterunku values(8,1);
insert into ekwipunek_posterunku values(8,2);
insert into ekwipunek_posterunku values(9,2);
insert into ekwipunek_posterunku values(8,6);
insert into ekwipunek_posterunku values(9,6);
insert into ekwipunek_posterunku values(9,14);
insert into ekwipunek_posterunku values(9,15);
insert into ekwipunek_posterunku values(10,2);
insert into ekwipunek_posterunku values(11,12);
insert into ekwipunek_posterunku values(10,11);
insert into ekwipunek_posterunku values(10,5);
insert into ekwipunek_posterunku values(10,4);
insert into ekwipunek_posterunku values(11,2);
insert into ekwipunek_posterunku values(11,7);
insert into ekwipunek_posterunku values(11,5);
insert into ekwipunek_posterunku values(11,6);
insert into ekwipunek_posterunku values(12,2);
insert into ekwipunek_posterunku values(12,4);
insert into ekwipunek_posterunku values(12,6);
insert into ekwipunek_posterunku values(12,8);
insert into ekwipunek_posterunku values(12,13);
insert into ekwipunek_posterunku values(13,2);
insert into ekwipunek_posterunku values(13,1);
insert into ekwipunek_posterunku values(13,4);
insert into ekwipunek_posterunku values(13,6);
insert into ekwipunek_posterunku values(13,9);
insert into ekwipunek_posterunku values(14,2);
insert into ekwipunek_posterunku values(14,1);
insert into ekwipunek_posterunku values(14,5);
insert into ekwipunek_posterunku values(14,8);
insert into ekwipunek_posterunku values(15,15);
insert into ekwipunek_posterunku values(15,1);
insert into ekwipunek_posterunku values(15,4);
insert into ekwipunek_posterunku values(15,2);
insert into ekwipunek_posterunku values(15,6);
insert into ekwipunek_posterunku values(15,8);

---WIDOK 1

CREATE OR REPLACE VIEW INCYDENT_PRACOWNIK AS
    SELECT OSOBY.IMIE, OSOBY.NAZWISKO, STANOWISKO.NAZWA, RODZAJE_INC.NAZWA AS "NAZWA INCYDENTU" FROM PRACOWNICY
    INNER JOIN OSOBY ON pracownicy.osoby_id_osoby = osoby.id_osoby
    INNER JOIN STANOWISKO ON pracownicy.stanowisko_id_stanowiska = stanowisko.id_stanowiska
    INNER JOIN POSTERUNKI ON pracownicy.posterunki_id_posterunku = posterunki.id_posterunku
    INNER JOIN INCYDENTY ON posterunki.id_posterunku = incydenty.posterunki_id_posterunku
    INNER JOIN RODZAJE_INC ON incydenty.id_incydentu = incydenty.rodzaje_inc_id_rodzaju_inc;
    
---WIDOK 2

CREATE OR REPLACE VIEW ZATRUDNIENI_PO_2000 AS
    SELECT OSOBY.IMIE, OSOBY.NAZWISKO, ADRESY.MIASTO, ZATRUDNIENIA.DATA_ZATRUDNIENIA FROM OSOBY
    INNER JOIN ADRESY ON adresy.id_adresu = osoby.adresy_id_adresu
    INNER JOIN PRACOWNICY ON pracownicy.osoby_id_osoby = osoby.id_osoby
    INNER JOIN ZATRUDNIENIA ON pracownicy.zatrudnienia_id_zatrudnienia = zatrudnienia.id_zatrudnienia
    WHERE EXTRACT(YEAR FROM ZATRUDNIENIA.DATA_ZATRUDNIENIA) > 2000;

---WIDOK 3

CREATE OR REPLACE VIEW EKWIPUNEK_LASY AS
    SELECT LASY.RODZAJ, LASY.WIELKOSC AS "(km^2)", EKWIPUNEK.NAZWA, EKWIPUNEK.ILOSC AS "sztuk" FROM POSTERUNKI
    INNER JOIN REJONY ON rejony.id_rejonu = posterunki.rejony_id_rejonu
    INNER JOIN LASY ON lasy.rejony_id_rejonu = rejony.id_rejonu
    INNER JOIN EKWIPUNEK_POSTERUNKU ON posterunki.id_posterunku = ekwipunek_posterunku.posterunki_id_posterunku
    INNER JOIN EKWIPUNEK ON ekwipunek.id_ekwipunku = ekwipunek_posterunku.ekwipunek_id_ekwipunku
