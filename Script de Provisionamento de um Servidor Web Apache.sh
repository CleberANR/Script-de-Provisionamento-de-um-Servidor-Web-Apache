#!/bin/bash
echo "Atualizando o servidor..."
apt-get update -y
echo "Instalando as atualizações..."
apt-get upgrade -y
echo "Instalando apache2..."
apt install apache2 -y
echo "Instalando unzip..."
apt install unzip -y
echo "Baixando linux-site-dio do github"
wget -P /tmp [https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip](https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/mai)
echo "Deszipando o conteúdo"
unzip main.zip
echo "Copiando para o ambiente do apache"
cp -R * /tmp/linux-site-dio-main /var/www/html
