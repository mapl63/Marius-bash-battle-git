
#!/bin/bash

palabra="$1"

grep -l "$palabra" *.log | sort

