#!/bin/bash

echo "Atualizando servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando Apache2..."
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Instalando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos para a pasta padrão Apache..."
cp -R * /var/www/html/
