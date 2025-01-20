#!/bin/bash
# Copiar archivos modificados el 8 de enero de 2025 a ~/logs_date
mkdir -p ~/logs_date
find /var/log -type f -newermt "2025-01-08" -exec cp {} ~/logs_date/ \;
