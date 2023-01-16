# bug-hacking
In this script, we use several popular tools for reconnaissance and enumeration:

sublist3r for subdomain enumeration
assetfinder for finding assets related to the target domain
amass for active reconnaissance and subdomain enumeration
subfinder for passive reconnaissance and subdomain enumeration
httprobe for finding active http/https subdomains
nmap for port scanning and service enumeration
aquatone for taking screenshots of the target subdomains
waybackurls for finding URLs from historical archives
The script assumes that these tools have been installed and are in the system's PATH. Also, it creates a directory with the name of the target and saves the output of each tool in a separate text file with the tool's name.

Please keep in mind that this is a basic example, and you might need to customize the script according to your needs and the scope of your project. Also, you should always have
