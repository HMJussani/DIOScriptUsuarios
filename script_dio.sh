#!/bin/bash

echo "Iniciando Script:"
echo 
echo "Criando os Grupos:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos Criados."
echo 
echo "Criando Diretorios:"
mkdir /publico
chmod 777 /publico 
mkdir /adm
chown root:GRP_ADM  /adm/
chmod 750 /adm/
mkdir /ven
chown root:GRP_VEN  /ven/
chmod 750 /adm/
mkdir /sec
chown root:GRP_SEC  /sec/
chmod 750 /adm/
ls / -l
echo 
echo "Diretorios criados."
echo 
echo "Criando usuarios GRP_ADM:"

useradd carlos -c "Usuario Grupo ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_ADM
passwd -e carlos 
useradd maria -c "Usuario Grupo ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_ADM
passwd -e maria
useradd joao_ -c "Usuario Grupo ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_ADM
passwd -e joao_
echo

echo "Criando usuarios GRP_VEN:"

useradd debora -c "Usuario Grupo VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Usuario Grupo VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Usuario Grupo VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_VEN
passwd -e roberto
echo

echo "Criando usuarios GRP_SEC:"

useradd josefina -c "Usuario Grupo SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_SEC
passwd -e josefina
useradd amanda -c "Usuario Grupo SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Usuario Grupo SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123 ) -G GRP_SEC
passwd -e rogerio
echo
 
echo "Usuarios Criados"
echo
echo "Fim do Script!"
