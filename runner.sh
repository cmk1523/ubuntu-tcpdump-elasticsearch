#!/bin/bash
# Description: converts a .cap in to: .ivs, .handshakes and elastic search bulk. 
# Example: ./runner.sh test.cap

file="$1"
sudo ivstools --convert "$file" "$file".ivs
sudo wpaclean "$file".handshakes "$file"
./pcapToElasticBulkJson.sh "$file" > "$file".elastic