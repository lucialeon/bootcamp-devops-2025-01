#!/bin/bash
# Monitorización de archivos dinámicos
if [ -f /var/log/syslog ]; then
    tail -f /var/log/syslog
else
    journalctl -f
fi

