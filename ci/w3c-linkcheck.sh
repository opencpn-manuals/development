#!/bin/bash

subject=$(git log -1 --oneline)
if [[ "$subject" != *full?linkcheck* ]]; then
    echo "No [full-linkcheck] annotation found. Exiting."
    exit 0
fi
sudo apt install -qq  -y w3c-linkchecker

checklink \
    --suppress-broken '403:https://www.opencpn.org/' \
    --suppress-broken '403:https://opencpn.org/' \
    --suppress-broken '403:https://www.opencpn.org/flyspray/' \
    --suppress-broken '403:https://opencpn.org/flyspray/' \
    --suppress-broken '403:$dokuwiki?id=opencpn:opencpn_user_manual' \
    --suppress-redirect 'https://opencpn-manuals.github.io/development->https://opencpn-manuals.github.io/development/' \
    --exclude 'https://opencpn.org/wiki/dokuwiki/' \
    --depth 4 -s docs/index.html
