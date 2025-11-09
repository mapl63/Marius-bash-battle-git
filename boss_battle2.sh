#!/bin/bash
rm -rf Arena_Boss Victory_Archive
mkdir -p Arena_Boss Victory_Archive

for i in {1..5}; do
    lines=$((RANDOM % 11 + 10))
    filename="Arena_Boss/archivo$i.txt"

    if [ "$i" -eq 3 ]; then
        echo "Victory" > "$filename"
        for j in $(seq 2 $lines); do
            echo "Line $j" >> "$filename"
        done
    else
        for j in $(seq 1 $lines); do
            echo "Line $j" >> "$filename"
        done
    fi
done

ls -S Arena_Boss

grep -l "Victory" Arena_Boss/* | xargs -I{} mv {} Victory_Archive/


