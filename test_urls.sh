#!/bin/sh
# could use `curl --silent -L` in place of xh
cat README.md | awk '{ FS = "|"; if($3 ~ /^ *https/) print $3 }' | xargs xh --follow --quiet
