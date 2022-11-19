#!/bin/sh

#Just EDIT This line -->
array_of_packages=("git" "python 3" "vlc" "unrar")

#DO NOT EDIT NEXT LINES!
flashCyan="\033[1;4;5;36;40m"
none="\033[0m"

touch 00_log.txt

for i in "${array_of_packages[@]}"
do
	echo "---------------------------"
	echo -e $flashCyan"Startd Downloding: "$i$none
	echo "---------------------------"
	echo -e "${i// /_}"" : " >> 00_log.txt
	sleep 1
   	mkdir "${i// /_}"
   	cd "${i// /_}"
   	apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances $i | grep "^\w" | sort -u) 2>> ../00_log.txt
   	cd ..
   	echo "---------------------------"
	echo -e $flashCyan"Finished Downloding: "$i$none
	echo -e "---------------------------\n"
done