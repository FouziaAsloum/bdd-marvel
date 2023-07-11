# Bdd Marvel

Stocker et manipuler des données dans une base de données.

![img_html](./img/marvel.jpeg)

## Contexte du projet

J'envisage de faire créer un site où les utilisateurs devront se connecter pour faire différentes opérations de recherches à propos des films, des acteurs/actrices ou des réalisateurs.  
Par contre, seul l'administrateur pourra ajouter, modifier ou supprimer des données. Pour chaque entrée dans la base de données, il y aura la date de création et de modification.

Mais la partie site web n'est pas pour tout de suite 😃

Avant celà, j'ai besoin d'une base de données afin de stocker des données appartenant à l'Univers Cinématographique Marvel.

## Modalités pédagogiques

### Structure de la base de donnée relationnelle

*Les films*  
Un film comporte un titre, un ou plusieurs acteurs, un réalisateur, une durée et l'année de sa sortie.

*Les acteurs, actrices*  
Nom, prénom, rôle et date de naissance.

*Les réalisateurs*  
Nom et prénom.

*Les utilisateurs*  
Nom, prénom, email, mot de passe, rôle et liste des films préférés.

### Les requêtes

Merci de me fournir ce jeu de requêtes pour tester la bdd :
- les titres et dates de sortie des films du plus récent au plus ancien

```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique

```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
``` 


- la liste des actrices ou acteurs principaux pour un film donné
```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- la liste des films pour une actrice ou un acteur donné

```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- ajouter un film

```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
``` 

- ajouter une actrice ou un acteur
```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- modifier un film
```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- supprimer une actrice ou un acteur
```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```

- afficher les 3 derniers acteurs/actrices ajouté(e)s
```sql 
SELECT `films_titres_Films`, `films_sortie_Films` FROM Films ORDER BY `films_sortie_Films` DESC;
```
​
### Contraintes

- utiliser AnalyseSi
- MySQL

## Modalités d'évaluation

Vos requêtes seront executées après avoir importé la bdd dans votre image docker.

## Livrables

Un dépôt GitHub contenant dans l'ordre :
- l'environnement docker
- le dictionnaire de données
- MCD
- MPD
- MLD
- un fichier au format *sql* (incluant quelques données)
- le jeu de requêtes dans le *README.md*

## Deadline

5 jours.

## Ressources

- environnement docker fourni
- [Comprendre les bases de données](https://www.base-de-donnees.com/comprendre-bases-de-donnees/)
- [Modèle Conceptuel des Données](https://www.base-de-donnees.com/mcd/)

## Authors

* [Nicolas Herbez](https://github.com/nicolas-herbez)
