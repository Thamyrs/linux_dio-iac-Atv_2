
#!/bin/bash

echo "Atualizando o sistema"

apt update
apt upgrade -y

echo "Instalando o servidor apache"

apt install apache2 -y
/etc/init.d/apache2 start

echo "Baixando o unzip"
apt install unzip -y

echo "Baixando arquivos e configurando o index.html"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp
unzip /tmp/main.zip -d /tmp
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Fim"
