#!/bin/bash

# Realizar el POST
echo "Realizando POST a /api/add" >> $HEALTHCHECK_OUTPUT
curl -X POST http://127.0.0.1:8080/api/add \
-H "Content-Type: application/json" \
-d '{"name": "John Doe", "email": "johndoe@example.com", "pwd": "yourpassword"}' >> $HEALTHCHECK_OUTPUT 2>&1
echo "\n-----------------------------------\n" >> $HEALTHCHECK_OUTPUT

# Realizar el GET a /api/users
echo "Realizando GET a /api/users" >> $HEALTHCHECK_OUTPUT
curl -X GET http://127.0.0.1:8080/api/users >> $HEALTHCHECK_OUTPUT 2>&1
echo "\n-----------------------------------\n" >> $HEALTHCHECK_OUTPUT

# Realizar el GET a /api/hello-world
echo "Realizando GET a /api/hello-world" >> $HEALTHCHECK_OUTPUT
curl -X GET http://127.0.0.1:8080/api/hello-world >> $HEALTHCHECK_OUTPUT 2>&1
echo "\n-----------------------------------\n" >> $HEALTHCHECK_OUTPUT

# Realizar el GET a http://127.0.0.1:3000/
echo "Realizando GET a http://127.0.0.1:3000/" >> $HEALTHCHECK_OUTPUT
curl -X GET http://127.0.0.1:3000/ >> $HEALTHCHECK_OUTPUT 2>&1
echo "\n-----------------------------------\n" >> $HEALTHCHECK_OUTPUT
