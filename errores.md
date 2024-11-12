## Listado de Errores

### ETAPA SECRETS

Ninguna complicación grande.
Pudimos corroborar que se pueden generar 2 artefactos en un mismo job.

### ETAPA: LINT
/bin/sh: eval: line 133: npm: not found
/bin/sh: eval: line 133: python3: not found

- Debiamos especificar la imagen en los jobs.
- Tuvimos varios fallos por no correr los comandos de lint en scripts de bash.
- Tuvimos errores por ejecutar comandos desde directorios erróneos. ESLINT funciona distinto a PYLINT.

### ETAPA: BUILD

Muchas veces buildeamos en la carpeta incorrecta causando errores que nos tardo en reconocer.
Hubo confusiones de nombrado de imágenes y contenedores. También fuimos desprolijos con el versionado de imágenes lo cual causó confusiones.
Fuimos distraidos y no tuvimos en cuenta el host que apunte al contenedor de la base de datos.

### ETAPA: DOCKER LINT

Sin problemas, pudimos trabajar con lo aprendido.

### ETAPA: DEPLOY
