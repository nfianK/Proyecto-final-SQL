#Readme en desarrollo
# Dase de Datos de Spinetta
## Uso de la base de datos
Para poder utilizar la base de datos desde SQL hay dos opciones importar el archivo mismo de la base de datos o ejecutar cada uno de los archivos que la conforman
### Importar
 Para este metodo simplemente se tiene que descargar ´Spinetta_db.sql´ y luego desde la opción importar archivo se debe seleccionar imporatar archivo auto contenido. De esta manera se ejecutara todo lo que haya en ese .sql y se creará la base de datos con todos sus elementos (tablas, vistas, funciones, etc)
### Creación a partir de los archivos
 Este metodo es mas tedioso, pero te falicita el analisis de la composicion de la base de datos. Para llevar a cabo esta forma de creación, se debe descargar los archivos ´´
## Tablas relacionadas y normalización
 Para empezar a diagramar una base de datos debemos plantearnos que va a contener y como lo podemos almacenar. Por este motivo, debí realizar un diagrama en bloques de las tablas y las relaciones que van a tener entre estas (si es de 1 a 1, 1 a muchos o muchos a muchos). En este proceso fui desglosando cada una de las tablas, para que queden normalizadas, y puedan representarse de la siguiente manera.

## Creación de las tablas
 Una vez determinada la cantidad de tablas, que atributos y la relaciones entre ellas que iban a tener. Se puede empezar a crear la estructura en sql. 
## Contexto 
 Este proyecto se inicio con la finalidad de ser el proyecto final para el curso de CoderHouse en el 2021-2022. Luego llegado el año 2024 quería expandir un poco más mis conocimientos en SQL y poder mostrar através de un proyecto paso en limpio mis conocimientos para el mercado laboral. Al ser un proyecto de un curso debí cumplir con ciertas pautas, algunas de ellas condicionan la forma y las cosas que estan hechas. Por ejemplo, no tiene mucho sentido realizar un Store Procedure o Procedimiento Almacenado de una base de datos la cual no va sufrir modificaciones, ya que el artista del cual esta compuesta ha fallecido. Sin embargo, lo deje para poder mostrar que es lo que se puede hacer con SQL. Más allá de la base de datos, me parecía buena idea agregar una visualización respecto a su contenido, para que la información no solo quede en tablas y pueda mostrarnos algo de lo que recopile.  
