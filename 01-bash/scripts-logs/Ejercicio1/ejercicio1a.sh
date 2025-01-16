#!/bin/bash
# Identificación de los 5 archivos más grandes en /var/log
sudo du -ah /var/log | sort -rh | head -n 5
