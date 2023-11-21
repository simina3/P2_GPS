# a ejecutar al iniciar un contenedor del servicio de gestión de órdenes
#!/bin/bash

# Espera hasta que MongoDB esté disponible antes de continuar
while ! curl http://mongo:27017/
do
  echo "$(date) - Still trying to connect to MongoDB"
  sleep 1
done
echo "$(date) - Connected to MongoDB successfully"

# Ejecuta el servicio de órdenes
java -jar usr/local/app/ordering-service-0.1.0.jar -spring.config.location=application.properties
