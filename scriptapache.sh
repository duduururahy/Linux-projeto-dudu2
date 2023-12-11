#!/bin/bash

echo "Atualizando sistema"
echo "....."
echo ".........."
echo "..............."
apt-get update
apt-get upgrade -y

echo "Instalando servidor Web apache"
apt-get install apache2 -y
echo "....."
echo ".........."
echo "..............."

echo "Instalando o Unzip"
apt-get install unzip
echo "....."
echo ".........."
echo "..............."

cd /tmp

echo "Baixando arquivos do site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "....."
echo ".........."
echo "..............."

echo "Descompactando arquivo baixado"
unzip main.zip
echo "....."
echo ".........."
echo "..............."

cd linux-site-dio
echo "Copiando arquivos para o diretório html"
cp -R * /var/www/html
echo "....."
echo ".........."
echo "..............."


