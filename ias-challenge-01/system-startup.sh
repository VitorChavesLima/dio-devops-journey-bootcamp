
echo "Cleaning..."

echo "Removing folders..."

if [ -d "/publico" ]; then
        echo "Removing /publico folder";
        rmdir /publico;
fi

if [ -d "/adm" ]; then
        echo "Removing /adm folder";
        rmdir /adm;
fi

if [ -d "/ven" ]; then
        echo "Removing /ven folder";
        rmdir /ven;
fi

if [ -d "/sec" ]; then
        echo "Removing /sec folder";
        rmdir /sec;
fi