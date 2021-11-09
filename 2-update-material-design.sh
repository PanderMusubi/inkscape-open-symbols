#!/bin/bash
set -e
DIRECTORIES='material-design material-design-outlined material-design-round material-design-sharp material-design-twotone'



#TODO When fixed, move to 1-update-material-design.sh
for DIRECTORY in $DIRECTORIES; do
    for i in $DIRECTORY/*; do
        if [ ! -d $i ]; then
            continue
        fi

        #TODO remove next if when all is fixed, this is only to preserve the previous but working limited set
        if [ $DIRECTORY = material-design -a $i != material-design/material-design-home -a $i != material-design/material-design-search ]; then
            echo $i
            continue
        fi

        NAME=`echo $DIRECTORY|sed -e 's/-/ /g'|sed -e 's/\b\(.\)/\u\1/g'`' Icons \['`echo $i|sed 's/.*-//'|sed -e 's/\b\(.\)/\u\1/g'`' Set\]'
        sed -i -e 's/<\/symbol><\/svg>/<\/symbol>\n<\/svg>/g' $i/sprite/svg-symbols.svg
        head -n 45 template.svg|grep -v Edit|sed -e 's/2015-02-18/'`date +%Y-%m-%d`'/' > $i.svg
        sed -i -e 's/Material Design Icons \[Action Set\]/'"$NAME"'/g' $i.svg
        sed -i -e 's/style="fill:black;stroke:black">/style="fill:black;stroke:none">/g' $i.svg #FIXME
#        sed -i -e 's/style="fill:black;stroke:black">/style="fill:none;stroke:black">/g' $i.svg #FIXME
        head -n -1 $i/sprite/svg-symbols.svg|tail -n +2|sed -e 's/^    /        /g' >> $i.svg
        tail -n 2 template.svg >> $i.svg
    done
done



#cp -f material-design/*.svg ~/.config/inkscape/symbols
