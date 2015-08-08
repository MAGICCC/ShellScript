#!/bin/bash
printf "\n"

echo "batch tar and compress repositories inside a main directory, it should be executed from that main directory."

printf "\n"

ls ./ | while read i
do
    tar -cvf "$i.txz" "$i" --use-compress-prog=xz
done
