#!/bin/bash
# Modificar el área de una entrada
archivo_dhcp="dhcpd.conf"
read -p "Ingrese el hostname de la entrada a modificar: " hostname
read -p "Ingrese el nuevo área: " nuevo_area
if grep -q "host $hostname" "$archivo_dhcp"; then
    sed -i "/host $hostname/ s/host [^ ]*/host $nuevo_area/" "$archivo_dhcp"
    echo "Área modificada correctamente."
else
    echo "No se encontró el hostname especificado."
fi

