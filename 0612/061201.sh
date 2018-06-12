#!/bin/bash

echo "TOP 5 Biggest file in home directory"
echo "ファイル名, ファイル容量の大きさ:"
sudo find ~ -type f -exec du -Sh {} + | sort -rh | head -n 5 |  awk '{print $2, $1}'
