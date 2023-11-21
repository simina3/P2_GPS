# indicamos que se debe partir de una imagen con Tomcat y un JRE
FROM tomcat:7-jre8

MAINTAINER SiminaDaniela.Ciui@alu.uclm.es

# copiamos desde drop lo que tengamos a la carpeta de la imagen Docker a crear, la subcarpeta destino de dont Tomcat busca por defecto los .war
COPY drop/* /usr/local/tomcat/webapps/

# indica que el contendor que instancie esta imagen tendrá abierto el puerto 8080 para contactar con el host local
EXPOSE 8080

# indicamos qué comando debe ejecutarse al arrancar el contenedor, en este caso el servidor
ENTRYPOINT catalina.sh run
