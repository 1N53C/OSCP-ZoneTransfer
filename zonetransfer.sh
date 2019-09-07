#!/bin/bash

echo "ZoneTransfer Bash Script by 1N53C";

if [ -z "$1" ]; then
        echo "[*] ZoneTransfer Script by 1N53C";
        echo "[!] Usage : $0 <domain name>"
        exit 0
fi
for server in $(host -t ns $1 | cut -d " " -f4);
        do host -l $1 $server | grep "has address";
done
