# Conclusiones

## Implementacion de la Pipeline

- **Automatización Completa**: La pipeline abarca todas las etapas esenciales para un flujo DevOps robusto, incluyendo construcción, análisis de seguridad (SAST y SCA), linting, construcción de imágenes Docker y despliegue. Esto asegura la calidad del código y la seguridad antes de moverlo a producción.

- **Seguridad Integrada**: Incluye varias etapas de escaneo de seguridad para detectar secretos, vulnerabilidades en código (con Bandit para Python y njsscan para JavaScript) y componentes de terceros (Safety y Retire.js). Esto mitiga el riesgo de vulnerabilidades en el software.

- **Uso de Artefactos**: Se guardan reportes de cada análisis y linting como artefactos, lo que permite una revisión posterior, trazabilidad y auditoría en cada etapa de desarrollo.

- **Flexibilidad en Imágenes Docker**: La pipeline construye y despliega múltiples imágenes Docker (API CRUD, NGINX y Node) y facilita su versión más reciente (latest) y la versión específica (1.0.0), lo que ayuda en la gestión de versiones de despliegue.#

## Posibles Mejoras

- **Optimización en el Uso de Recursos**: Podríamos usar imágenes más ligeras (como Alpine) en algunas etapas (e.g., python:3.10-alpine en linting) para reducir el tiempo de descarga y mejorar la eficiencia en la pipeline.

- **Implementación de Caché para Dependencias**: Incorporar caché en la instalación de dependencias (e.g., pip o npm) para disminuir el tiempo de ejecución, especialmente útil en las etapas de análisis y linting donde las dependencias no cambian con frecuencia.

- **Automatización de Despliegue Selectivo**: En lugar de hacer push de todas las imágenes Docker en cada ejecución, podríamos condicionar el despliegue sólo si hubo cambios relevantes en las carpetas correspondientes. Esto reduciría el tiempo y los recursos de las ejecuciones de pipeline cuando no hay cambios significativos en las imágenes.
