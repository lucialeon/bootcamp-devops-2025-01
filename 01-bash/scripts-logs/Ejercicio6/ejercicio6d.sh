#!/bin/bash
# Añadir una nueva entrada al archivo DHCP
archivo_dhcp="dhcpd.conf"
read -p "Ingrese el área: " area
read -p "Ingrese el hostname: " hostname
read -p "Ingrese la dirección MAC: " mac
read -p "Ingrese la IP: " ip
# Validar si la IP o MAC ya existe
if grep -q "$ip" "$archivo_dhcp" || grep -q "$mac" "$archivo_dhcp"; then
    echo "Error: La IP o MAC ya existe en el archivo."
else
    echo -e "\nhost $hostname {\n  hardware ethernet $mac;\n  fixed-address $ip;\n}" >> "$archivo_dhcp"
    echo "Entrada añadida correctamente."
fi

