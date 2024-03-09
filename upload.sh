#!/bin/bash

source folders.sh
bash ./harvest.sh
stat -c %s harvest.txt >> stat.txt
sort harvest.txt | uniq > output.txt
stat -c %s output.txt >> stat.txt
git add output.txt
git commit -m "latest update"
git push
