# Base de Datos de Spinetta

## Uso de la Base de Datos

Para utilizar la base de datos desde SQL, existen dos opciones: importar el archivo de la base de datos o ejecutar cada uno de los scripts que la conforman.

### Importar DB

Para este método, basta con descargar `Spinetta_db.sql` y luego, desde la opción de importación de archivos, seleccionar "importar archivo autocontenido". Así se ejecutará todo lo que contenga ese archivo `.sql` y se creará la base de datos con todos sus elementos (tablas, vistas, funciones, etc.).

### Creación a Partir de los Archivos

Este método es más laborioso, pero facilita el análisis de la composición de la base de datos. Para llevar a cabo esta forma de creación, descarga los archivos `Creacion_Database.sql`, `Creacion_Funciones.sql`, `Creacion_de_Vistas.sql` y `StoredProcedure.sql`, y ejecútalos en orden. El primer archivo que se debe ejecutar es `Creacion_Database.sql`, ya que crea la base de datos, las tablas y carga los datos. Al tener cada archivo por separado, es más fácil entender cómo se crea cada parte de esta base de datos en SQL y además es más sencillo realizar modificaciones si se desea.

## Proceso de Desarrollo

### Tablas Relacionadas y Normalización

Para comenzar a diagramar una base de datos, debemos plantearnos qué va a contener y cómo lo podemos almacenar. Por este motivo, realicé un diagrama en bloques de las tablas y las relaciones que van a tener entre estas (si es de 1 a 1, 1 a muchos o muchos a muchos). En este proceso, fui desglosando cada una de las tablas para que queden normalizadas y puedan representarse de manera eficiente.

### Creación de las Tablas

Una vez determinada la cantidad de tablas, qué atributos y las relaciones entre ellas que iban a tener, se puede empezar a crear la estructura en SQL. Con estructura me refiero a crear las columnas, sus restricciones (si deben ser datos enteros, de texto, fechas, etc.) y determinar cuáles son primary keys y cuáles son foreign keys. Una vez hecho el paso anterior, este paso es sencillo, ya que consiste en codificar todo lo que se ideó respecto a la relación entre tablas y sus atributos.

### Recopilación e Inserción de Datos

Este fue uno de los pasos más tediosos, ya que hasta ese momento no existía una base de datos de Spinetta, y se tuvo que registrar cada uno de los datos que están en Excel. Para que sea más sencillo y fácil a la hora de importar los datos, se crearon varios archivos (no una hoja) en esta misma herramienta. Luego de recopilar todo, se exportaron los archivos a extensión `.csv` para poder importarlos a SQL. El proceso siguiente es sencillo, simplemente se colocaron todos los archivos que corresponden a sus tablas. Una vez realizado esto, se exportó la inserción de datos a la base de datos, facilitando la importación de datos y acelerándolo.

### Creación de Vistas

Se crearon 5 vistas que pueden servir para acelerar las consultas y realizar subqueries:

- **`Canciones_Luis`**: Muestra todas las canciones de Spinetta como solista, usando como columnas `cancion_id`, `nombre` y `duracion`.
- **`Cancion_banda`**: Trae la relación de cada una de las canciones con la banda que la compuso. Mostrando las columnas `nombre` (de la tabla canción), `nombre` (de la banda) y `duracion`.
- **`ProducidoxSpinetta`**: Muestra todos los álbumes producidos por Spinetta como único valor.
- **`Canciones_alternativo`**: Muestra todas las canciones que corresponden al género alternativo. Seleccionando columnas `nombre` (de la tabla canción), `genero` y `nombre` (de la tabla álbum).
- **`Guitarristas`**: Muestra todos los guitarristas que tocaron junto a Spinetta. Seleccionando las columnas `integrante_id`, `nombre` (de la tabla integrante) y `nombre` (de la tabla álbum).

### Creación de Funciones

En esta base de datos existen dos funciones desarrolladas las cuales son:
- **`CancionesxBanda`**: La finalidad de esta función es consultar todas las canciones de cierta banda a través del id de misma. Para esto se toma un parámetro de entrada de tipo entero que es el que se utiliza para filtrar.
-  **`enalbum`**: Lo que devuelve esta función es el nombre del álbum en función del nombre de la canción o una aproximación (Por ejemplo si la canción es "Todas las hojas son del viento" con colocar como parámetro "las hojas son" es suficiente). Eso sí, si se le coloca palabras comunes como "El" entonces va a devolver varios registros.

### Creación de Stored Procedures

Luego estuvo la creación de los procedimientos almacenados que son más recreativos que funcionales, ya que en una base de datos donde no se está llevando a cabo procedimientos, nunca se podría usar stored procedures que lleven a cabo un log o que mejoren el rendimiento de la actualización de la base de datos.

- **`Ordenar`**: Es un procedimiento almacenado que tiene dos parámetros de entrada, por cuál columna se desea ordenar la tabla canción y si es de forma ascendente o descendente. Te devuelve la tabla canciones de forma ordenada.

- **`Delete_integrante`**: Como su nombre lo dice, elimina el registro de cierto integrante. Lo elimina por el número de id, el cual se da al stored procedure a través de los parámetros de entrada que tiene.

## Contexto

Este proyecto se inició con la finalidad de ser el proyecto final para el curso de CoderHouse en 2021-2022. Llegado el año 2024, quería expandir un poco más mis conocimientos en SQL y poder mostrar, a través de un proyecto, mis habilidades para el mercado laboral. Al ser un proyecto de un curso, debí cumplir con ciertas pautas, algunas de las cuales condicionan la forma y las cosas que están hechas. Por ejemplo, no tiene mucho sentido realizar un procedimiento almacenado en una base de datos que no va a sufrir modificaciones, ya que el artista del cual está compuesta ha fallecido.
