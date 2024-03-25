#!/bin/bash

# Read through the url file and execute wget command for every url

url=$1
echo "" > $2
while read -r line; do
      if [ -z "$line" ]
      then
          break
      fi
      wget "${line}" -O ./tmpfile
      cat ./tmpfile >> $2
      rm ./tmpfile
done <$url
