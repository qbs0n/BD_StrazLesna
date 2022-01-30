CURSOR c1
IS
SELECT STANOWISKO.NAZWA, OSOBY.IMIE, OSOBY.NAZWISKO FROM STANOWISKO
INNER JOIN PRACOWNICY on stanowisko.id_stanowiska = pracownicy.stanowisko_id_stanowiska
INNER JOIN OSOBY on pracownicy.osoby_id_osoby = osoby.id_osoby;

CURSOR c2
IS
SELECT OSOBY.IMIE, OSOBY.NAZWISKO, STANOWISKO.NAZWA, RODZAJE_INC.NAZWA AS "NAZWA INCYDENTU" FROM PRACOWNICY
INNER JOIN OSOBY ON pracownicy.osoby_id_osoby = osoby.id_osoby
INNER JOIN STANOWISKO ON pracownicy.stanowisko_id_stanowiska = stanowisko.id_stanowiska
INNER JOIN POSTERUNKI ON pracownicy.posterunki_id_posterunku = posterunki.id_posterunku
INNER JOIN INCYDENTY ON posterunki.id_posterunku = incydenty.posterunki_id_posterunku
INNER JOIN RODZAJE_INC ON incydenty.id_incydentu = incydenty.rodzaje_inc_id_rodzaju_inc;

CURSOR c3
IS
SELECT ZMIANA.POCZATEK_ZMIANY, ZMIANA.KONIEC_ZMIANY, OSOBY.IMIE, OSOBY.NAZWISKO FROM PRACOWNICY
INNER JOIN OSOBY ON pracownicy.osoby_id_osoby = osoby.id_osoby
INNER JOIN ZMIANA ON pracownicy.zmiana_id_zmiany = zmiana.id_zmiany;

CURSOR c4
IS
SELECT OSOBY.IMIE, OSOBY.NAZWISKO, ADRESY.MIASTO, ZATRUDNIENIA.DATA_ZATRUDNIENIA FROM OSOBY
INNER JOIN ADRESY ON adresy.id_adresu = osoby.adresy_id_adresu
INNER JOIN PRACOWNICY ON pracownicy.osoby_id_osoby = osoby.id_osoby
INNER JOIN ZATRUDNIENIA ON pracownicy.zatrudnienia_id_zatrudnienia = zatrudnienia.id_zatrudnienia
