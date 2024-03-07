#!/bin/bash

# Read through the url.txt file and execute wget command for every url


url="urls.txt"
echo "" > harvest.txt
while read -r line; do
      if [ -z "$line" ]
      then
          break
      fi
      wget "${line}" -O ./tmpfile
      cat ./tmpfile >> harvest.txt
      rm ./tmpfile
done <$url
