#! /bin/bash

echo "Criando diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários:"

useradd carlos -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd maria -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd joao -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 Senha123)

useradd debora -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd sebastiana -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd roberto -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 Senha123)

useradd josefina -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd amanda -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 Senha123)
useradd rogerio -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 Senha123)

echo "Especificando permissõs dos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado_____"