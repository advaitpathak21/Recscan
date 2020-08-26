#!/bin/bash
url=$1

if [ ! -d "$url" ];then
		mkdir $url
fi

if [ ! -d "$url/recon" ];then
		mkdir $url/recon
fi

echo "[*] Harvesting subdomains using assetfinder for $1"
assetfinder $url > $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 > $url/recon/final.txt

#-----------------------------------------------------------------

echo "[*] Probing for all the alive subdomains for $1"
cat $url/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?.\/\///' | tr -d ':443' > $url/recon/alive.txt

#---------------------------------------------------------------

count=$(cat $url/recon/alive.txt | wc -l)
echo "Found $count alive subdomains for $1"
