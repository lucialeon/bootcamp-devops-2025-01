#!/bin/bash
# Eliminar una entrada del archivo DHCP
archivo_dhcp="dhcpd.conf"
read -p "Ingrese la IP, MAC o hostname de la entrada a eliminar: " criterio
# Buscar y eliminar
if grep -q "$criterio" "$archivo_dhcp"; then
    sed -i "/$criterio/,+3d" "$archivo_dhcp"
    echo "Entrada eliminada correctamente."
else
    echo "No se encontró la entrada especificada."
fi

