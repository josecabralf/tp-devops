#!/bin/bash

OUTPUT_FILE=./healthcheck.log

echo "API-PYTHON POST" >> $OUTPUT_FILE

echo "Realizando POST a /api/add" >> $OUTPUT_FILE
curl -X POST http://127.0.0.1:8080/api/add \
-H "Content-Type: application/json" \
-d '{"name": "John Doe", "email": "johndoe@example.com", "pwd": "yourpassword"}' >> $OUTPUT_FILE 2>&1



echo "API-PYTHON GET" >> $OUTPUT_FILE

echo "Realizando GET a /api/users" >> $OUTPUT_FILE
curl -X GET http://127.0.0.1:8080/api/users >> $OUTPUT_FILE 2>&1



echo "API-NODE" >> $OUTPUT_FILE

echo "Realizando GET a /api/hello-world" >> $OUTPUT_FILE
curl -X GET http://127.0.0.1:8080/api-node/hello-world >> $OUTPUT_FILE 2>&1



echo "REACT" >> $OUTPUT_FILE

echo "Realizando GET a http://127.0.0.1:3000/" >> $OUTPUT_FILE
curl -X GET http://127.0.0.1:3000/ >> $OUTPUT_FILE 2>&1
