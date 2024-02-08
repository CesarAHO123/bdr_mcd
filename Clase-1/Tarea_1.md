# Tarea 1

### Describir una base de datos y sus relaciones de manera no estructurada

Para la realización de las practicas de este curso se hara uso de la base de datos de *IMDB* en la cual podemos encontrar información sobre películas, actores, directores y más.

[IMDB DATASET](https://developer.imdb.com/non-commercial-datasets/)
Tablas en la DB
#### Akas(Also known as)
 - **titleId** (string) - un tconst, un identificador único alfanumérico del título
- **ordering** (integer) – un número para identificar de manera única las filas para un titleId dado
- **title** (string) – el título localizado
- **region** (string) - la región para esta versión del título
- **language** (string) - el idioma del título
- **types** (array) - Conjunto enumerado de atributos para este título alternativo. 
- **attributes** (array) - Términos adicionales para describir este título alternativo, no enumerados
- **isOriginalTitle** (boolean) – 0: no es título original; 1: título original

#### Basics(información basica del titulo.)
- **tconst** (string) - identificador único alfanumérico del título
- **titleType** (string) – el tipo/formato del título (por ejemplo, película, cortometraje, serie de televisión, episodio de televisión, video, etc.)
- **primaryTitle** (string) – el título más popular / el título utilizado por los cineastas en materiales promocionales en el momento del lanzamiento
- **originalTitle** (string) - título original, en el idioma original
- **isAdult** (booleano) - 0: título no destinado a adultos; 1: título para adultos
- **startYear** (YYYY) – representa el año de lanzamiento de un título. En el caso de las series de televisión, es el año de inicio de la serie
- **endYear** (YYYY) – año de finalización de la serie de televisión. ‘\N’ para todos los demás tipos de título
- **runtimeMinutes** – duración principal del título, en minutos
- **genres** (array de cadenas) – incluye hasta tres géneros asociados con el título

#### Crew(Personas que participaron)
- **tconst** (string) - identificador único alfanumérico del título
- **directors** (array of nconsts) - director(es) del título dado
- **writers** (array of nconsts) – guionista(s) del título dado

#### Episode
- **tconst** (string) - identificador alfanumérico del episodio
- **parentTconst** (string) - identificador alfanumérico de la serie de televisión principal
- **seasonNumber** (integer) – número de temporada a la que pertenece el episodio
- **episodeNumber** (integer) – número de episodio del tconst en la serie de televisión
#### Principals (Actores)
- **tconst** (string) - alphanumeric unique identifier of the title
- **ordering** (integer) – a number to uniquely identify rows for a given titleId
- **nconst** (string) - alphanumeric unique identifier of the name/person
- **category** (string) - the category of job that person was in
- **job** (string) - the specific job title if applicable, else '\N'
- **characters** (string) - the name of the character played if applicable, else '\N'
#### Ratings (Puntuación del titulo)
- **tconst** (string) - identificador alfanumérico único del título
- **averageRating** - promedio ponderado de todas las calificaciones individuales de los usuarios
- **numVotes** - número de votos que el título ha recibido


### Investigar distintos SGBD. Elegir uno y describirlo ###
#### Postgresql ####
Despues de investigar varios distintos sistemas de gestores de bases de datos se decidio usar postgresql.
Es un sistema de bases de datos de código abierto que se destaca por su capacidad de adaptación y su cumplimiento con el estándar SQL. 
Actualmente se considera uno de los motores de base de datos más avanzados en la indutria.

Sus funciones pricipales son:

- Almacenamiento eficiente de datos: organiza y almacena datos garantizando su integridad y consistencia.
- Consultas avanzadas: permite realizar consultas complejas y analizar datos para obtener información valiosa con lenguaje SQL.
- Backend confiable para aplicaciones: empleado principalmente en el desarrollo de aplicaciones web y móviles, pues ofrece un almacenamiento seguro y escalable para los datos de la aplicación.
- Soporte geoespacial: cuenta con funciones avanzadas para manejar datos geoespaciales, siendo ideal para apps que requieren análisis y visualización de mapas.



### Fuentes. ###
- [Platzi](https://platzi.com/blog/que-es-postgresql/)

