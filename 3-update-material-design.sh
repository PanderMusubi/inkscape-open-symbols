#!/bin/bash
set -e
DIRECTORIES='material-design material-design-outlined material-design-round material-design-sharp material-design-twotone'
#TODO When fixed, move to 1-update-material-design.sh



for DIRECTORY in $DIRECTORIES; do
    for i in $DIRECTORY/*; do
        if [ ! -d $i ]; then
            continue
        fi
#UNCOMMENT        rm -rf $i
    done
done
