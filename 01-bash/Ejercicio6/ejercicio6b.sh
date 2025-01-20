#!/bin/bash
# Detectar IPs disponibles en el rango 192.168.88.1 - 192.168.88.254
archivo_dhcp="dhcpd.conf"
echo "IPs disponibles en el rango 192.168.88.1 - 192.168.88.254:"
seq 1 254 | awk '{print "192.168.88." $1}' | grep -vFf <(grep -Eo '192\.168\.88\.[0-9]+' "$archivo_dhcp")

