# Recscan
Created a scanning and enumeration tool (Kali) for finding the subdomains of any site.
This tool is written in bash.
Using already present tools like the assetfinder [], amass [], httprobe [].
Assetfinder and amass list all the subdomains.
Httprobe will find the alive subdomains using probing.
All the alive subdomains and found subdomains will be listed in a file created named by the scanned site folder.
The file having the alive subdomains is sorted and has only unique sobdomains.

1) Read the important.txt file
2) After prerequisite installation:-

SYNTAX : ./recscan.sh [domainname]
