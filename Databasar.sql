CREATE SCHEMA Firma;
SET search_path TO Firma;

CREATE TABLE ansatt (
    ansattid INTEGER NOT NULL UNIQUE,
    brukarnamn VARCHAR(30) NOT NULL UNIQUE,
    fornamn VARCHAR(30) NOT NULL,
    etternamn VARCHAR(30) NOT NULL,
    ansettingsdato DATE NOT NULL,
    stilling VARCHAR(30) NOT NULL,
    månadslonn INTEGER NOT NULL,
    CONSTRAINT ansatt_pk PRIMARY KEY (ansattid)
    --Avdeling VARCHAR(30) NOT NULL,
    --Prosjekt
--Må tenke ut denne her
);

INSERT INTO
ansatt(ansattid, brukarnamn, fornamn, etternamn, ansettingsdato, stilling, månadslonn)
VALUES
    (6527 ,'Bergensaren123', 'Petter', 'Smart', '2020-05-29', 'Røyrleggar', '30000');

SELECT * FROM ansatt;


/*CREATE TABLE Avdeling ( 
    AvdelingId INTEGER NOT NULL UNIQUE,
    Namn
--Framandnøkkel?
    Sjef VARCHAR(30) NOT NULL
)

CREATE TABLE Prosjekt (
    ProsjekId INTEGER NOT NULL UNIQUE,
    Namn
--???
    Beskrivelse VARCHAR(200) NOT NULL,
    AnsettDeltakelse
--Framandnøkkel frå andre tabellar? Legge til dei andre punkta også?
)
*/
--Test