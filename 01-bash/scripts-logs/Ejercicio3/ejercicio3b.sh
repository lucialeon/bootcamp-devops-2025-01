#!/bin/bash
# Carpeta más pesada en tres niveles desde la raíz
sudo du -ah / | grep -P '^/[^/]+/[^/]+/[^/]+$' | sort -rh | head -n 1
