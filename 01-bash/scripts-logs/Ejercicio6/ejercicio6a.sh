#!/bin/bash
archivo_dhcp="dhcpd.conf"

# Listar IPs y nombres de host
echo "IPs y nombres de host:"
grep -E "host|fixed-address" "$archivo_dhcp"

# Detectar IPs disponibles en el rango 192.168.88.1 - 192.168.88.254
echo "IPs disponibles:"
seq 1 254 | awk '{print "192.168.88." $1}' | grep -vFf <(grep -Eo '192\.168\.88\.[0-9]+' "$archivo_dhcp")
