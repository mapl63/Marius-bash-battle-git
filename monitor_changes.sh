
#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 ruta_del_directorio"
    exit 1
fi

dir="$1"

if [ ! -d "$dir" ]; then
    echo "Error: $dir no es un directorio válido"
    exit 1
fi

ls "$dir" > snapshot1.txt

echo "Haz cambios en $dir y presiona ENTER cuando termines..."
read

ls "$dir" > snapshot2.txt

{
    echo "==== $(date) ===="
    diff snapshot1.txt snapshot2.txt
} > changes.log

echo "Cambios guardados en changes.log"

rm snapshot1.txt snapshot2.txt
