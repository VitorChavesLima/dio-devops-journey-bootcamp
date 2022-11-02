#!/bin/bash

echo "Cleaning..."

echo "Removing folders..."

if [ -d "/publico" ]; then
    echo "  - Removing /publico folder";
    rm -rf /publico;
fi

if [ -d "/adm" ]; then
    echo "  - Removing /adm folder";
    rm -rf /adm;
fi

if [ -d "/ven" ]; then
    echo "  - Removing /ven folder";
    rm -rf /ven;
fi

if [ -d "/sec" ]; then
    echo "  - Removing /sec folder";
    rm -rf /sec;
fi

echo "Removing users..."

if (grep -q -E "carlos" /etc/passwd) then
    echo "  - Removing user: carlos";
    userdel carlos -r;
fi

if (grep -q -E "maria" /etc/passwd) then
    echo "  - Removing user: maria";
    userdel maria -r;
fi

if (grep -q -E "joao" /etc/passwd) then
    echo "  - Removing user: joao";
    userdel joao -r;
fi

if (grep -q -E "debora" /etc/passwd) then
    echo "  - Removing user: debora";
    userdel debora -r;
fi

if (grep -q -E "sebastiana" /etc/passwd) then
    echo "  - Removing user: sebastiana";
    userdel sebastiana -r;
fi

if (grep -q -E "roberto" /etc/passwd) then
    echo "  - Removing user: roberto";
    userdel roberto -r;
fi

if (grep -q -E "josefina" /etc/passwd) then
    echo "  - Removing user: josefina";
    userdel josefina -r;
fi

if (grep -q -E "amanda" /etc/passwd) then
    echo "  - Removing user: amanda";
    userdel amanda -r;
fi

if (grep -q -E "rogerio" /etc/passwd) then
    echo "  - Removing user: rogerio";
    userdel rogerio -r;
fi

echo "Removing groups..."

if (grep -q -E "GRP_ADM" /etc/group) then
    echo "  - Removing GRP_ADM group";
    groupdel GRP_ADM;
fi

if (grep -q -E "GRP_VEN" /etc/group) then
    echo "  - Removing GRP_VEN group";
    groupdel GRP_VEN;
fi

if (grep -q -E "GRP_SEC" /etc/group) then
    echo "  - Removing GRP_SEC group";
    groupdel GRP_SEC;
fi

echo "Creating folders"

echo "  - Creating /publico folder"
mkdir /publico
chmod 777 /publico

echo "  - Creating /adm folder"
mkdir /adm
chmod 770 /adm

echo "  - Creating /ven folder"
mkdir /ven
chmod 770 /ven

echo "  - Creating /sec folder"
mkdir /sec
chmod 770 /sec

echo "Creating groups"

echo "  - Creating GRP_ADM group"
groupadd GRP_ADM
chown -R :GRP_ADM /adm

echo "  - Creating GRP_VEN group"
groupadd GRP_VEN
chown -R :GRP_VEN /ven

echo "  - Creating GRP_SEC group"
groupadd GRP_SEC
chown -R :GRP_SEC /sec

echo "Creating users"

echo "  - Creating user: carlos - Group: GRP_ADM"
useradd -g GRP_ADM carlos -s /bin/bash -m
passwd -e carlos

echo "  - Creating user: maria - Group: GRP_ADM"
useradd -g GRP_ADM maria -s /bin/bash -m
passwd -e maria

echo "  - Creating user: joao - Group: GRP_ADM"
useradd -g GRP_ADM joao -s /bin/bash -m
passwd -e joao

echo "  - Creating user: debora - Group: GRP_VEN"
useradd -g GRP_VEN debora -s /bin/bash -m
passwd -e debora

echo "  - Creating user: sebastiana - Group: GRP_VEN"
useradd -g GRP_VEN sebastiana -s /bin/bash -m
passwd -e sebastiana

echo "  - Creating user: roberto - Group: GRP_VEN"
useradd -g GRP_VEN roberto -s /bin/bash -m
passwd -e roberto

echo "  - Creating user: josefina - Group: GRP_SEC"
useradd -g GRP_SEC josefina -s /bin/bash -m
passwd -e josefina

echo "  - Creating user: amanda - Group: GRP_SEC"
useradd -g GRP_SEC amanda -s /bin/bash -m
passwd -e amanda

echo "  - Creating user: rogerio - Group: GRP_SEC"
useradd -g GRP_SEC rogerio -s /bin/bash -m
passwd -e rogerio