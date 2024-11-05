#!/bin/sh

# Verifica que se pase un directorio como argumento
if [ -z "$1" ]; then
  echo "Error: No directory specified."
  exit 1
fi

DIR=$1

# Verifica que el directorio exista
if [ -d "$DIR" ]; then
  echo "Running ESLint in $DIR"
  (cd "$DIR" && npx eslint .)
else
  echo "Directory $DIR does not exist!"
  exit 1
fi

exit 0
