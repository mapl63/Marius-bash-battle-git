#!/bin/bash

for file in *.txt; do
    if [ "$file" != "sort_output.txt" ]; then
        size=$(stat -c%s "$file")
        echo "$file - $size bytes"
    fi
done | sort -k3 -n | tee sort_output.txt
