#!/bin/sh
cat README.md | awk '{ FS = "|"; if($3 ~ /^ *https/) print $3 }' | xargs > urls.txt
cat urls.txt | xargs curl --head > /dev/null
