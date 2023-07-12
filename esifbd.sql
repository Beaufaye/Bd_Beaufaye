CREATE database esifbd;

CREATE TABLE client(
    idclient INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    contact CHAR(15),
    quartier VARCHAR(100)
);

INSERT INTO client (nom, prenom, contact, quartier)
VALUES ('AGBANOU', 'Vital', 0022968754124, 'Calavi'),
        ('BAOUROU', 'Beaufaye', 0022657208623, 'Wayalghin'),
        ('OBOULBIGA', 'Laurena', 0022673189861, 'Sondogo'),
        ('DILA', 'Tresor', 0022656788871, 'Dassasgho'),
        ('KABORE', 'Hyacinthe', 0022654774231, 'Borgho' );

CREATE TABLE fournisseur(
    idfour INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    contact CHAR(15)
);

INSERT INTO fournisseur (nom, prenom, contact)
VALUES ('BAWA', 'Hamdyath', 0022956478952),
       ('OUEDRAOGO', 'Worokia', 0022665598741),
       ('SIMBORO', 'Yacouba', 0022673456987);


CREATE TABLE categorie (
    idcategorie INT PRIMARY KEY AUTO_INCREMENT,
    nomcategorie VARCHAR(100)
);

INSERT INTO categorie (nomcategorie)
VALUES ('ELECTROMENAGER'),
       ('EQUIPEMENT INFORMATIQUE');


CREATE TABLE article(
    idarticle INT PRIMARY KEY AUTO_INCREMENT,
    nomarticle VARCHAR(100),
    couleur VARCHAR(100),
    prix CHAR(15),
    idcategorie INT,
    FOREIGN KEY (idcategorie) REFERENCES categorie (idcategorie)
);


INSERT INTO article (nomarticle, couleur, prix, idcategorie)
VALUES ('Ecran 32 LG', 'Rouge', 125000, 1),
       ('Router Wifi', 'Blanc', 25000, 2),
       ('Megaport PC Gamer Guardian', 'Noir', 1350000, 2),
       ('Refrigerateur', 'Blanc', 75000, 1);

CREATE TABLE vente(
    idvente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    datevente DATE,
    idclient INT,
    idarticle INT,
    FOREIGN KEY (idclient) REFERENCES client (idclient),
    FOREIGN KEY (idarticle) REFERENCES article (idarticle)
);

INSERT INTO vente (datevente, idclient, idarticle)
VALUES ('2023-07-12', 1, 1);

CREATE TABLE achat(
    noachat INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dateachat DATE,
    idfour INT,
    idarticle INT,
    FOREIGN KEY (idfour) REFERENCES fournisseur (idfour),
    FOREIGN KEY (idarticle) REFERENCES article (idarticle)
);

INSERT INTO achat (dateachat, idfour, idarticle)
VALUES ('2023-06-19', 1, 1);















