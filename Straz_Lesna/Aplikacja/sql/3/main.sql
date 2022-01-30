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
    INNER JOIN EKWIPUNEK ON ekwipunek.id_ekwipunku = ekwipunek_posterunku.ekwipunek_id_ekwipunku;

---WIDOK 4

CREATE OR REPLACE VIEW WYSWIETL_ZMIANY AS
    SELECT ZMIANA.POCZATEK_ZMIANY, ZMIANA.KONIEC_ZMIANY, OSOBY.IMIE, OSOBY.NAZWISKO FROM PRACOWNICY
    INNER JOIN OSOBY ON pracownicy.osoby_id_osoby = osoby.id_osoby
    INNER JOIN ZMIANA ON pracownicy.zmiana_id_zmiany = zmiana.id_zmiany;
	
---WIDOK 5

CREATE OR REPLACE VIEW ZAGRAZAJACE_INCYDENTY AS
    SELECT INCYDENTY.DATA, RODZAJE_INC.NAZWA, RODZAJE_INC.STOPIEN_ZAGROZENIA FROM INCYDENTY
    INNER JOIN RODZAJE_INC ON incydenty.rodzaje_inc_id_rodzaju_inc = rodzaje_inc.id_rodzaju_inc
    WHERE STOPIEN_ZAGROZENIA > 1;
	
---WIDOK 6

CREATE OR REPLACE VIEW PRACOWNICY_PER_MIASTO AS 
  SELECT ADRESY.MIASTO, COUNT(ADRESY.MIASTO) AS "ILE" FROM ADRESY
    INNER JOIN OSOBY ON osoby.adresy_id_adresu = adresy.id_adresu
    INNER JOIN PRACOWNICY ON osoby.id_osoby = pracownicy.osoby_id_osoby
    GROUP BY ADRESY.MIASTO;