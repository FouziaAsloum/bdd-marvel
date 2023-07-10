DROP TABLE IF EXISTS Films;

CREATE TABLE Films (
    ID_films_Films INT AUTO_INCREMENT NOT NULL,
    films_titres_Films VARCHAR(255),
    films_acteurs_Films VARCHAR(255),
    films_realisateurs_Films VARCHAR(255),
    films_duree_Films TIME,
    films_sortie_Films DATE,
    PRIMARY KEY (ID_films_Films)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Acteurs_Actrices;

CREATE TABLE Acteurs_Actrices (
    ID_actors INT AUTO_INCREMENT NOT NULL,
    actors_nom VARCHAR(255),
    actors_prenom VARCHAR(255),
    actors_role VARCHAR(255),
    actors_bday DATE,
    PRIMARY KEY (ID_actors)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Réalisateurs;

CREATE TABLE Réalisateurs (
    ID_director_Réalisateurs INT AUTO_INCREMENT NOT NULL,
    director_nom_Réalisateurs VARCHAR(255),
    director_prenom_Réalisateurs VARCHAR(255),
    PRIMARY KEY (ID_director_Réalisateurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Utilisateurs;

CREATE TABLE Utilisateurs (
    ID_user_Utilisateurs INT AUTO_INCREMENT NOT NULL,
    user_nom_Utilisateurs VARCHAR(255),
    user_prenom_Utilisateurs VARCHAR(255),
    user_email_Utilisateurs VARCHAR(255),
    user_mdp_Utilisateurs VARCHAR(255),
    user_role_Utilisateurs VARCHAR(255),
    user_favlist VARCHAR(255),
    PRIMARY KEY (ID_user_Utilisateurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Role_dans_le_film;

CREATE TABLE Role_dans_le_film (
    ID_actors INT AUTO_INCREMENT NOT NULL,
    ID_films_Films INT NOT NULL,
    PRIMARY KEY (ID_actors, ID_films_Films)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS A_regardé;

CREATE TABLE A_regardé (
    ID_films_Films INT AUTO_INCREMENT NOT NULL,
    ID_user_Utilisateurs INT NOT NULL,
    PRIMARY KEY (ID_films_Films, ID_user_Utilisateurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Produit_par;

CREATE TABLE Produit_par (
    ID_films_Films INT AUTO_INCREMENT NOT NULL,
    ID_director_Réalisateurs INT NOT NULL,
    PRIMARY KEY (ID_films_Films, ID_director_Réalisateurs)
) ENGINE = InnoDB;

ALTER TABLE
    Role_dans_le_film
ADD
    CONSTRAINT FK_Role_dans_le_film_ID_actors FOREIGN KEY (ID_actors) REFERENCES Acteurs_Actrices (ID_actors);

ALTER TABLE
    Role_dans_le_film
ADD
    CONSTRAINT FK_Role_dans_le_film_ID_films_Films FOREIGN KEY (ID_films_Films) REFERENCES Films (ID_films_Films);

ALTER TABLE
    A_regardé
ADD
    CONSTRAINT FK_A_regardé_ID_films_Films FOREIGN KEY (ID_films_Films) REFERENCES Films (ID_films_Films);

ALTER TABLE
    A_regardé
ADD
    CONSTRAINT FK_A_regardé_ID_user_Utilisateurs FOREIGN KEY (ID_user_Utilisateurs) REFERENCES Utilisateurs (ID_user_Utilisateurs);

ALTER TABLE
    Produit_par
ADD
    CONSTRAINT FK_Produit_par_ID_films_Films FOREIGN KEY (ID_films_Films) REFERENCES Films (ID_films_Films);

ALTER TABLE
    Produit_par
ADD
    CONSTRAINT FK_Produit_par_ID_director_Réalisateurs FOREIGN KEY (ID_director_Réalisateurs) REFERENCES Réalisateurs (ID_director_Réalisateurs);