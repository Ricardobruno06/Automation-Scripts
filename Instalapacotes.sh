#!/bin/bash

echo Atualizando repositórios..
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"

# note que $1 aqui será substituído pelo Bash pelo primeiro argumento passado em linha de comando
if ! apt-get install $1
then
    echo "Não foi possível instalar o pacote $1"
    exit 1
fi
echo "Instalação finalizada"