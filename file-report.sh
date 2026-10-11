#!/bin/bash
echo "==== File Report ==="

if [ -f "info.txt" ]; then
cat info.txt
echo "Total Lines: $(wc -l < info.txt)"
else
echo "Error : info.txt not found!"
fi

