#!/bin/bash

echo "Cleaning..."

echo "Removing folders..."

if [ -d "/publico" ]; then
    echo "  - Removing /publico folder";
    rmdir /publico;
fi

if [ -d "/adm" ]; then
    echo "  - Removing /adm folder";
    rmdir /adm;
fi

if [ -d "/ven" ]; then
    echo "  - Removing /ven folder";
    rmdir /ven;
fi

if [ -d "/sec" ]; then
    echo "  - Removing /sec folder";
    rmdir /sec;
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

echo "Removing users..."

if (grep -q -E "carlos" /etc/passwd) then
    echo "  - Removing user: carlos";
    userdel carlos;
fi

if (grep -q -E "maria" /etc/passwd) then
    echo "  - Removing user: maria";
    userdel maria;
fi

if (grep -q -E "joao" /etc/passwd) then
    echo "  - Removing user: joao";
    userdel joao;
fi

if (grep -q -E "debora" /etc/passwd) then
    echo "  - Removing user: debora";
    userdel debora;
fi

if (grep -q -E "sebastiana" /etc/passwd) then
    echo "  - Removing user: sebastiana";
    userdel sebastiana;
fi

if (grep -q -E "roberto" /etc/passwd) then
    echo "  - Removing user: roberto";
    userdel roberto;
fi

if (grep -q -E "josefina" /etc/passwd) then
    echo "  - Removing user: josefina";
    userdel josefina;
fi

if (grep -q -E "amanda" /etc/passwd) then
    echo "  - Removing user: amanda";
    userdel amanda;
fi

if (grep -q -E "rogerio" /etc/passwd) then
    echo "  - Removing user: rogerio";
    userdel rogerio;
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