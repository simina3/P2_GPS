# Dockerfile para crear la imagen del servicio para tramitar órdenes
# Indicamos que se debe partir de una imagen con OpenJDK 8 JRE
FROM openjdk:8-jre

# Creamos el directorio de la aplicación
RUN mkdir -p /usr/local/app

# copiamos el .jar del servicio a la imagen
COPY drop/*.jar /usr/local/app/

# copiamos el script que se ejecutará al lanzar el contenedor
COPY drop/run.sh usr/local/app/run.sh

# cuando lancemos una pila de servicios con Docker, la ip de MongoDB no se puede
# descubrir al menos que se la pasemos en un archivo de propiedades
COPY drop/application.properties application.properties

# Exponemos el puerto 8080
EXPOSE 8080

# Indicamos qué comando debe ejecutarse al arrancar el contenedor
ENTRYPOINT sh usr/local/app/run.sh
