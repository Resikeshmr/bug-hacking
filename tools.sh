#!/bin/bash

# target domain
target="example.com"

# create a directory for the results
mkdir $target

# run sublist3r
sublist3r -d $target -o $target/sublist3r.txt

# run assetfinder
assetfinder --subs-only $target > $target/assetfinder.txt

# run amass
amass enum -d $target -o $target/amass.txt

# run subfinder
subfinder -d $target -o $target/subfinder.txt

# run httprobe
cat $target/sublist3r.txt $target/assetfinder.txt $target/amass.txt $target/subfinder.txt | sort -u | httprobe > $target/httprobe.txt

#run nmap
nmap -p- -Pn -sV -sC -oA $target/nmap.txt $(cat $target/httprobe.txt | awk {'print $2'})

#run aquatone
aquatone-scan -ports xlarge -out $target $target

#run waybackurls
waybackurls $target > $target/waybackurls.txt
