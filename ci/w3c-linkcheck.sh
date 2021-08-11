#!/bin/bash

subject=$(git log -1 --oneline)
if [[ ! "$subject" != *full?linkcheck* ]]; then
    echo "No full-linkcheck annotaion found. Exiting."
    exit 0
fi
sudo apt install -y w3c-linkchecker

if checklink  -qb --depth 3 docs/index.html &> linkcheck.log; then
    cat linkcheck.log
else
    tail -20 linkcheck.log
    paste_link=$(curl -F 'f:1=<-' ix.io < linkcheck.log)
    echo "Complete linkchecker log is at $paste_link"
fi
