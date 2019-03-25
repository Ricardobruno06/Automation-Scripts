#!/bin/bash

echo "Começando a Instalação do LAPP"

sudo apt update

#instalando apache
apt install apache2 apache2-utils

#instalando PHP
apt install php php-pgsql libapache2-mod-php

#instalando PostgreSQL
apt install postgresql libpq5 postgresql-9.5 postgresql-client-9.5 postgresql-client-common postgresql-contrib