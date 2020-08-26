import subprocess

subprocess.call("go get -u github.com/tomnomnom/assetfinder")
subprocess.call("export GO111MODULE=on")
subprocess.call("go get -v github.com/OWASP/Amass/v3/...")
subprocess.call("go get -u github.com/tomnomnom/httprobe")