#!/bin/bash
# Listar imágenes y ordenarlas por tamaño de mayor a menor

# Listar imágenes y ordenar por tamaño
docker images --format "{{.Repository}}:{{.Tag}} {{.Size}}" | sort -hr -k2
