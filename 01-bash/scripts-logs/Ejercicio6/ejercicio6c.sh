#!/bin/bash
# Buscar entradas por IP, MAC o hostname
archivo_dhcp="dhcpd.conf"
read -p "Ingrese el criterio de búsqueda (IP, MAC o hostname): " criterio
resultado=$(grep -i "$criterio" "$archivo_dhcp")
if [ -z "$resultado" ]; then
    echo "No se encontraron entradas para el criterio ingresado."
else
    echo "Resultados:"
    echo "$resultado"
fi

