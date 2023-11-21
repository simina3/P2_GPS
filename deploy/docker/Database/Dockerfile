# Dockerfile para la creación de imagen con MongoDB
FROM mongo:3.4

COPY drop/* usr/local/data/db/

# CMD es lo mismo que ENTRYPOINT pero con otro formato
CMD ["mongod", "--smallfiles", "--rest"]
