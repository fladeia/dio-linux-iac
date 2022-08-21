#!/bin/bash

echo "Instalando dependências..."

apt update && apt install openssl -y

echo "Criando diretórios..."

mkdir /publica
mkdir /ter
mkdir /sup
mkdir /ave

echo "Criando grupos de usuário..."

groupadd GRP_TER
groupadd GRP_SUP
groupadd GRP_AVE

echo "Criando usuários..."

useradd jason -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_TER
useradd fred -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_TER
useradd michael -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_TER

useradd nick -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
useradd grabber -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
useradd jach -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP

useradd clark -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_AVE
useradd wayne -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_AVE
useradd wednesday -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_AVE

echo "Especificando permissões dos direórios..."

chown root:GRP_TER /ter
chown root:GRP_SUP /sup
chown root:GRP_AVE /ave

chown 770 /ter
chown 770 /sup
chown 770 /ave
chown 777 /publica

echo "Finalizado ..."

tail -f /dev/null
