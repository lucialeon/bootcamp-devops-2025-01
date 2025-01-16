#!/bin/bash
# Copiar archivos que contienen la palabra "system" a ~/logs_system
mkdir -p ~/logs_system
grep -rl "system" /var/log | xargs -I {} cp {} ~/logs_system/
