
CREATE TABLE adresy (
    id_adresu       INTEGER NOT NULL,
    miasto          VARCHAR2(30) NOT NULL,
    ulica           VARCHAR2(30) NOT NULL,
    "nr_bloku/domu" VARCHAR2(30) NOT NULL,
    nr_mieszkania   INTEGER
);

ALTER TABLE adresy ADD CONSTRAINT adresy_pk PRIMARY KEY ( id_adresu );

CREATE TABLE ekwipunek (
    id_ekwipunku INTEGER NOT NULL,
    nazwa        VARCHAR2(30) NOT NULL,
    ilosc        INTEGER NOT NULL
);

ALTER TABLE ekwipunek ADD CONSTRAINT ekwipunek_pk PRIMARY KEY ( id_ekwipunku );

CREATE TABLE ekwipunek_posterunku (
    ekwipunek_id_ekwipunku   INTEGER NOT NULL,
    posterunki_id_posterunku INTEGER NOT NULL
);

ALTER TABLE ekwipunek_posterunku ADD CONSTRAINT relation_6_pk PRIMARY KEY ( ekwipunek_id_ekwipunku,
                                                                            posterunki_id_posterunku );

CREATE TABLE incydenty (
    id_incydentu               INTEGER NOT NULL,
    data                       DATE NOT NULL,
    rodzaje_inc_id_rodzaju_inc INTEGER NOT NULL,
    posterunki_id_posterunku   INTEGER NOT NULL
);

ALTER TABLE incydenty ADD CONSTRAINT incydenty_pk PRIMARY KEY ( id_incydentu,
                                                                posterunki_id_posterunku );

CREATE TABLE lasy (
    id_lasu          INTEGER NOT NULL,
    nazwa            VARCHAR2(30) NOT NULL,
    rodzaj           VARCHAR2(30) NOT NULL,
    wielkosc         FLOAT(2) NOT NULL,
    rejony_id_rejonu INTEGER NOT NULL
);

ALTER TABLE lasy ADD CONSTRAINT lasy_pk PRIMARY KEY ( id_lasu );

CREATE TABLE osoby (
    id_osoby         INTEGER NOT NULL,
    imie             VARCHAR2(30) NOT NULL,
    nazwisko         VARCHAR2(30) NOT NULL,
    wiek             INTEGER NOT NULL,
    adresy_id_adresu INTEGER NOT NULL
);

ALTER TABLE osoby ADD CONSTRAINT osoby_pk PRIMARY KEY ( id_osoby );

CREATE TABLE posterunki (
    id_posterunku    INTEGER NOT NULL,
    obszar           FLOAT(2) NOT NULL,
    data_zalozenia   DATE NOT NULL,
    rejony_id_rejonu INTEGER NOT NULL
);

ALTER TABLE posterunki ADD CONSTRAINT posterunki_pk PRIMARY KEY ( id_posterunku );

CREATE TABLE pracownicy (
    id_pracownika                INTEGER NOT NULL,
    osoby_id_osoby               INTEGER NOT NULL,
    zatrudnienia_id_zatrudnienia INTEGER NOT NULL,
    stanowisko_id_stanowiska     INTEGER NOT NULL,
    zmiana_id_zmiany             INTEGER NOT NULL,
    posterunki_id_posterunku     INTEGER NOT NULL
);

CREATE UNIQUE INDEX pracownicy__idx ON
    pracownicy (
        osoby_id_osoby
    ASC );

CREATE UNIQUE INDEX pracownicy__idxv1 ON
    pracownicy (
        zatrudnienia_id_zatrudnienia
    ASC );

ALTER TABLE pracownicy ADD CONSTRAINT pracownicy_pk PRIMARY KEY ( id_pracownika );

CREATE TABLE rejony (
    id_rejonu INTEGER NOT NULL,
    nazwa     VARCHAR2(30) NOT NULL,
    obszar    FLOAT(2) NOT NULL
);

ALTER TABLE rejony ADD CONSTRAINT rejony_pk PRIMARY KEY ( id_rejonu );

CREATE TABLE rodzaje_inc (
    id_rodzaju_inc     INTEGER NOT NULL,
    nazwa              VARCHAR2(30) NOT NULL,
    stopien_zagrozenia INTEGER NOT NULL
);

ALTER TABLE rodzaje_inc ADD CONSTRAINT rodzaje_inc_pk PRIMARY KEY ( id_rodzaju_inc );

CREATE TABLE stanowisko (
    id_stanowiska INTEGER NOT NULL,
    nazwa         VARCHAR2(30) NOT NULL,
    pensja        FLOAT(2) NOT NULL
);

ALTER TABLE stanowisko ADD CONSTRAINT stanowisko_pk PRIMARY KEY ( id_stanowiska );

CREATE TABLE zatrudnienia (
    id_zatrudnienia   INTEGER NOT NULL,
    data_zatrudnienia DATE NOT NULL
);

ALTER TABLE zatrudnienia ADD CONSTRAINT zatrudnienia_pk PRIMARY KEY ( id_zatrudnienia );

CREATE TABLE zmiana (
    id_zmiany       INTEGER NOT NULL,
    poczatek_zmiany DATE NOT NULL,
    koniec_zmiany   DATE NOT NULL,
    pora_dnia       VARCHAR2(30) NOT NULL
);

ALTER TABLE zmiana ADD CONSTRAINT zmiana_pk PRIMARY KEY ( id_zmiany );

ALTER TABLE incydenty
    ADD CONSTRAINT incydenty_posterunki_fk FOREIGN KEY ( posterunki_id_posterunku )
        REFERENCES posterunki ( id_posterunku );

ALTER TABLE incydenty
    ADD CONSTRAINT incydenty_rodzaje_inc_fk FOREIGN KEY ( rodzaje_inc_id_rodzaju_inc )
        REFERENCES rodzaje_inc ( id_rodzaju_inc );

ALTER TABLE lasy
    ADD CONSTRAINT lasy_rejony_fk FOREIGN KEY ( rejony_id_rejonu )
        REFERENCES rejony ( id_rejonu );

ALTER TABLE osoby
    ADD CONSTRAINT osoby_adresy_fk FOREIGN KEY ( adresy_id_adresu )
        REFERENCES adresy ( id_adresu );

ALTER TABLE posterunki
    ADD CONSTRAINT posterunki_rejony_fk FOREIGN KEY ( rejony_id_rejonu )
        REFERENCES rejony ( id_rejonu );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_osoby_fk FOREIGN KEY ( osoby_id_osoby )
        REFERENCES osoby ( id_osoby );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_posterunki_fk FOREIGN KEY ( posterunki_id_posterunku )
        REFERENCES posterunki ( id_posterunku );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_stanowisko_fk FOREIGN KEY ( stanowisko_id_stanowiska )
        REFERENCES stanowisko ( id_stanowiska );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_zatrudnienia_fk FOREIGN KEY ( zatrudnienia_id_zatrudnienia )
        REFERENCES zatrudnienia ( id_zatrudnienia );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_zmiana_fk FOREIGN KEY ( zmiana_id_zmiany )
        REFERENCES zmiana ( id_zmiany );

ALTER TABLE ekwipunek_posterunku
    ADD CONSTRAINT relation_6_ekwipunek_fk FOREIGN KEY ( ekwipunek_id_ekwipunku )
        REFERENCES ekwipunek ( id_ekwipunku );

ALTER TABLE ekwipunek_posterunku
    ADD CONSTRAINT relation_6_posterunki_fk FOREIGN KEY ( posterunki_id_posterunku )
        REFERENCES posterunki ( id_posterunku );

--sekwencje

CREATE SEQUENCE adresy_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE osoby_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE pracownicy_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE stanowisko_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE zatrudnienia_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE zmiana_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE posterunki_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE rejony_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE lasy_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE incydenty_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE rodzaje_inc_seq 
  INCREMENT BY 1 
  START WITH 1 
;

CREATE SEQUENCE ekwipunek_seq 
  INCREMENT BY 1 
  START WITH 1 
;


