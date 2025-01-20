#!/bin/bash
# Copiar archivos grandes a ~/logs_large
mkdir -p ~/logs_large
find /var/log -type f -size +4k -exec cp {} ~/logs_large/ \;
