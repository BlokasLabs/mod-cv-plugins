#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for p in $(ls "$1"); do
    if [ -e "$DIR/lv2-data/plugin-data/mod-cv-plugins/$p" ]; then
        echo Copying $p GUI...
        cp -rp "$DIR/lv2-data/plugin-data/mod-cv-plugins/$p" "$1/"
    else
        echo GUI for $p not found, removing the plugin...
        rm -r "$1/$p"
    fi
done
