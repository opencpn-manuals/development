#!/bin/bash

subject=$(git log -1 --oneline)
if [[ "$subject" != *full?linkcheck* ]]; then
    echo "No [full-linkcheck] annotation found. Exiting."
    exit 0
fi
sudo apt install -y w3c-linkchecker

checklink --exclude opencpn.org \
          --exclude bigdumboat.com \
          --exclude cubian.org \
          --depth 4 -s docs/index.html
