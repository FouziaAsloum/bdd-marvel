/* ACTEURS */
INSERT INTO
  `Acteurs_Actrices` (
    `ID_actors`,
    `actors_nom`,
    `actors_prenom`,
    `actors_role`,
    `actors_bday`
  )
VALUES
  (
    NULL,
    'Holland',
    'Tom',
    'Héro principal Spider man',
    '1996-06-01'
  ),
  (
    NULL,
    'Coleman',
    'Zendaya',
    'Héroine principale Spider man',
    '1996-09-01'
  ),
  (
    NULL,
    'Johansson',
    'Scarlett',
    'Héroine principale Black Widow',
    '1984-11-22'
  ),
  (
    NULL,
    'Pugh',
    'Florence',
    'Héroine principale Black Widow',
    '1996-01-03'
  ),
  (
    NULL,
    'Hemsworth',
    'Chris',
    'Héro principal Thor',
    '1983-08-11'
  ),
  (
    NULL,
    'Portman',
    'Natalie',
    'Héroine principale Thor',
    '1981-06-09'
  ),
  (
    NULL,
    'Hopkins',
    'Anthony',
    'Héro principal Thor',
    '1937-12-31'
  ),
  (
    NULL,
    'Turner',
    'Sophie',
    'Héroine principale X-MEN',
    '1996-02-21'
  ),
  (
    NULL,
    'McAvoy',
    'James',
    'Héro principal X-MEN : Dark Phoenix',
    '1979-04-21'
  ),
  (
    NULL,
    'Fassbender',
    'Michael',
    'Héro principal X-MEN : Dark Phoenix',
    '1977-04-02'
  ),
  (
    NULL,
    'Downey JR.',
    'Robert',
    'Héro principal Avengers : Infinity war',
    '1965-04-04'
  ),
  (
    NULL,
    'Ruffalo',
    'Mark',
    'Héro principal Avengers : Infinity war',
    '1967-11-22'
  ),
  (
    NULL,
    'Larson',
    'Brie',
    'Héroine principale Captain Marvel',
    '1989-10-01'
  ),
  (
    NULL,
    'L. Jackson',
    'Samuel',
    'Héro principal Captain Marvel',
    '1948-12-21'
  ),
  (
    NULL,
    'David Jude',
    'Law',
    'Héro principal Captain Marvel',
    '1972-12-29'
  );

/* FILMS */
INSERT INTO
  `Films`(
    `films_titres_Films`,
    `films_duree_Films`,
    `films_sortie_Films`
  )
VALUES
  ('Spider Man', '02:30:00', '2017-07-07'),
  ('Black Widow', '02:25:00', '2021-07-07'),
  ('Thor', '01:55:00', '2011-04-27'),
  ('X-MEN : dark phoenix', '01:54:00', '2019-06-05'),
  (
    'Avengers : Infinity War',
    '02:36:00',
    '2018-04-25'
  ),
  ('Captain Marvel', '02:04:00', '2019-03-06');

/* REALISATEURS */
INSERT INTO
  `Réalisateurs`(
    `director_nom_Réalisateurs`,
    `director_prenom_Réalisateurs`
  )
VALUES
  ('Watts', 'Jon'),
  ('Shortland', 'Cate'),
  ('Branagh', 'Kenneth'),
  ('Kinberg', 'Simon'),
  ('Russo', 'Joe'),
  ('Russo', 'Anthony'),
  ('Boden', 'Anna'),
  ('Fleck', 'Ryan');

/* USERS */
INSERT INTO
  `Utilisateurs`(
    `user_nom_Utilisateurs`,
    `user_prenom_Utilisateurs`,
    `user_email_Utilisateurs`,
    `user_mdp_Utilisateurs`,
    `user_role_Utilisateurs`
  )
VALUES
  (
    'Asloum',
    'Fouzia',
    'fz.as@gmail.com',
    'blabla',
    'admin'
  ),
  (
    'Monkey.D.',
    'Luffy',
    'luffy@gmail.fr',
    'roidespirates',
    'user'
  ),
  (
    'Nico',
    'Robine',
    'robine@hotmail.com',
    'archeologue',
    'user'
  ),
  (
    'Roronoa',
    'Zoro',
    'zoro@outlook.fr',
    'bestsabreur',
    'user'
  ),
  (
    'Nara',
    'Shikamaru',
    'shika@gmail.com',
    'smartermanever',
    'user'
  );

/* ROLE DANS LE FILM */
INSERT INTO
  `Role_dans_le_film`(`ID_actors`, `ID_films_Films`)
VALUES
  ('1', '1'),
  ('3', '1'),
  ('4', '2'),
  ('5', '2'),
  ('6', '3'),
  ('7', '3'),
  ('8', '3'),
  ('9', '4'),
  ('10', '4'),
  ('11', '4'),
  ('12', '5'),
  ('13', '5'),
  ('14', '6'),
  ('15', '6'),
  ('16', '6');

/* PRODUIT PAR */
INSERT INTO
  `Produit_par`(`ID_films_Films`, `ID_director_Réalisateurs`)
VALUES
  ('1', '1'),
  ('2', '2'),
  ('3', '3'),
  ('4', '4'),
  ('5', '5'),
  ('5', '6'),
  ('6', '7'),
  ('6', '8');

/* FAV LIST */
INSERT INTO
  `A_regardé`(`ID_films_Films`, `ID_user_Utilisateurs`)
VALUES
  ('3', '1'),
  ('1', '5'),
  ('2', '5'),
  ('3', '5'),
  ('4', '5'),
  ('5', '5'),
  ('6', '5'),
  ('1', '2'),
  ('3', '2'),
  ('5', '2'),
  ('2', '3'),
  ('3', '3'),
  ('4', '3'),
  ('6', '3');