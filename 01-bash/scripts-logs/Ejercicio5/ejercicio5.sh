#!/bin/bash
# Descargar archivo y realizar operaciones
curl -O https://get.docker.com
# Mover línea 316 a 519
sed -n '316p' get.docker.com >> temp && sed -i '519 r temp' get.docker.com && rm temp
# Contar la palabra "echo"
echo "Número de veces que aparece 'echo': $(grep -o "echo" get.docker.com | wc -l)"
# Reemplazar "echo" por "printf"
sed -i 's/echo/printf/g' get.docker.com
# Mover líneas 140-146 al final
sed -n '140,146p' get.docker.com >> get.docker.com
