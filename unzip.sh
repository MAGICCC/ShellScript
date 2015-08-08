#!/bin/bash
printf "\n"

echo "batch unzip and decompress repositories inside a main directory, it should be executed from that main directory."

printf "\n"

for fil in `ls`
   do
    fil = fil - ".zip"
     unzip -d${fil}. $fil
   done
