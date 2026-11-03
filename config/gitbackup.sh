#!/bin/bash
d=$(date +%Y-%m-%d_%H_%M)
cd ~/Sicherungen/Voron350
echo "Kopiere Daten in Working Dir"
cp ~/printer_data . -r
echo "Daten hinzufügen"
git add --all
echo "Daten commitieren"
git commit -m "Backup date : $d"
echo "Daten pushen"
git push
cd ~

