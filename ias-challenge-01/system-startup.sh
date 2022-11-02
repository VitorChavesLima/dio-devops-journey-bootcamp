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
