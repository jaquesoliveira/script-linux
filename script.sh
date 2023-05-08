#!/bin/bash

#cirando diretórios
mkdir curso
mkdir curso/publico
mkdir curso/admin
mkdir curso/ven
mkdir curso/sec

#criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuários
useradd carlos -c "usuário administrador" -e -g GRP_ADM -m -s /bin/bash -p $(openssl passwd -5 carlos123) 
useradd maria -c "usuário administrador" -m -s /bin/bash -e -g GRP_ADM -p $(openssl passwd -5 maria123) 
useradd joao -c "usuário administrador" -m -s /bin/bash -e -g GRP_ADM -p $(openssl passwd -5 joao123)

useradd debora -c "usuário vendedor" -m -s /bin/bash -p $(openssl passwd -5 debora123) -e -g GRP_VEN
useradd sebastiana -c "usuário vendedor" -m -s /bin/bash -p $(openssl passwd -5 sebastiana123) -e -g GRP_VEN
useradd roberto -c "usuário vendedor" -m -s /bin/bash -p $(openssl passwd -5 roberto123) -e -g GRP_VEN

useradd josefina -c "usuário de segurança" -m -s /bin/bash -p $(openssl passwd -5 josefina123) -e -g GRP_SEC
useradd amanda -c "usuário de segurança" -m -s /bin/bash -p $(openssl passwd -5 amanda123) -e -g GRP_SEC
useradd rogerio -c "usuário de segurança" -m -s /bin/bash -p $(openssl passwd -5 rogerio123) -e -g GRP_SEC

#atribuindo permissões
chmod 777 curso/publico
chmod 770 curso/admin
chmod 770 curso/ven
chmod 770 curso/sec
