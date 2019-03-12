#!/bin/bash

echo "Começando a Instalação do LAPP"

sudo apt update

#instalando apache
yum install httpd
systemctl start httpd
systemctl enable httpd
#instalando PHP
yum install epel-release
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum install php70w php70w-pgsql
#instalando PostgreSQL
yum install postgresql-server postgresql-contrib
postgresql-setup initdb
systemctl start postgresql
systemctl enable postgresql