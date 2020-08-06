#!/bin/bash
cd C:/Users/Nani/Desktop
echo
git clone $1//$2/$3/$4 
dir
read -p "Selecciona la carpeta que desas entrar " carpeta
dir
cd $carpeta
rm -rf .git
git init
git remote add origin https://gitlab:QsFj1vsRxD366WrVnike@gitlab.com/thincrs-bit/$5.git
git add .
git commit -m "Initial commit"
git push origin master
