#!/bin/sh

install_date=$(stat -c %y / | cut -d'.' -f1)
install_epoch=$(date -d "$install_date" +%s)
now_epoch=$(date +%s)

days=$(( (now_epoch - install_epoch) / 86400 ))

echo "Install date: $install_date"
echo "System age: $days days"
