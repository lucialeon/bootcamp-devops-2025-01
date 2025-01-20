#!/bin/bash
# Descargar archivo y realizar operaciones
curl -O https://get.docker.com

# Mover línea 316 a 519
sed -n '316p' get.docker.com >> temp && sed -i '519 r temp' get.docker.com && rm temp
