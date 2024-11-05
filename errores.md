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
