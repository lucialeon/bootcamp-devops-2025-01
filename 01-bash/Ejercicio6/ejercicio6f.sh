#!/bin/bash
# Modificar detalles de una entrada existente
archivo_dhcp="dhcpd.conf"
read -p "Ingrese la IP, MAC o hostname de la entrada a modificar: " criterio
if grep -q "$criterio" "$archivo_dhcp"; then
    echo "Entrada encontrada:"
    grep -A 3 "$criterio" "$archivo_dhcp"
    read -p "¿Qué desea modificar? (hostname/MAC/IP): " opcion
    read -p "Ingrese el nuevo valor: " nuevo_valor
    case $opcion in
        hostname)
            sed -i "/$criterio/ s/host [^ ]*/host $nuevo_valor/" "$archivo_dhcp"
            ;;
        MAC)
            sed -i "/$criterio/ s/hardware ethernet [^;]*/hardware ethernet $nuevo_valor/" "$archivo_dhcp"
            ;;
        IP)
            sed -i "/$criterio/ s/fixed-address [^;]*/fixed-address $nuevo_valor/" "$archivo_dhcp"
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
    echo "Entrada modificada correctamente."
else
    echo "No se encontró la entrada especificada."
fi

