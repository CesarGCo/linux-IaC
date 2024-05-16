#!/bin/bash

echo "Criando Diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios Criados!!"

echo "Criando Grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Grupos Criados!!"

echo "Criando Usuários ..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd carlos -e

useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd maria -e

useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd joao -e

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd debora -e

useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd sebastiana -e

useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd roberto -e

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd josefina -e

useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd amanda -e

useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 "1234")
passwd rogerio -e

echo "Usuários Criados!!"

echo "Colocando os usuários em seus devidos grupos ..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Usuários Alocados !!"

echo "Arrumando Permissões ..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões Prontas ..."


















