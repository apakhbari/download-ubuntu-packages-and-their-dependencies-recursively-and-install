#!/bin/bash

filename='0_log.txt'

flashCyan="\033[1;4;5;36;40m"
cyan="\033[1;4;36;40m"
none="\033[0m"

n=1

head -n -1 $filename > temp.txt

while read line; do

new_line="${line#*amd64}"
new_line="${new_line% [*}"
new_line=${new_line//amd64/}

new_line2="${new_line% *}"
new_line2="${new_line2## }"
new_line2="${new_line2%% }"

toInstallAddress=$(find . -name "${new_line2}*")

echo -e $cyan"---------------------------"$none
echo -e $flashCyan"Installing: ${new_line2}"$none
echo "Full name: ${new_line}"
echo -e "Is the address $cyan${toInstallAddress}$none ok?"
echo -e "dpkg:"

sudo dpkg --install "$toInstallAddress"

echo -e $cyan"Finished"$none
echo -e $cyan"---------------------------"$none
echo -e "\n"

n=$((n+1))
done < temp.txt

rm temp.txt