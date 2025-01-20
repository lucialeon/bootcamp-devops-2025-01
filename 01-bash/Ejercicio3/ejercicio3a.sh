#!/bin/bash
# Carpeta más pesada desde la raíz
sudo du -ah / | sort -rh | head -n 1
