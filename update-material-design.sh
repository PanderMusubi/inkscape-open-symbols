#!/bin/bash

# Preparations are:
# sudo npm -g install svgo
# npm install

set -e

if [ ! -e tmp ]; then
    mkdir tmp
fi
cd tmp
rm -rf material-design \
material-design-outlined \
material-design-round \
material-design-sharp \
material-design-twotone

if [ -e material-design-icons ]; then
    cd material-design-icons
    git pull -r
else
    git clone https://github.com/google/material-design-icons.git
    cd material-design-icons
fi

cd src/
for i in *; do # category
    echo $i
    cd $i
    for j in *; do # icon
        echo \ \ $j
        cd $j
        for k in *; do # style
            if [ $k = materialicons ]; then
                cd $k
                mkdir -p ../../../../../material-design/material-design-$i
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design/material-design-$i/$j.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design/material-design-$i/$j.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design/material-design-$i/$j.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design/material-design-$i/$j.svg
                            else
                                echo ERROR: Unsupported resolution
                                pwd
                                ls
                                exit 1
                            fi
                        fi
                    fi
                fi
                cd ..
            fi
            if [ $k = materialiconsoutlined ]; then
                cd $k
                mkdir -p ../../../../../material-design-outlined/material-design-outlined-$i
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-outlined/material-design-outlined-$i/$j.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-outlined/material-design-outlined-$i/$j.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-outlined/material-design-outlined-$i/$j.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-outlined/material-design-outlined-$i/$j.svg
                            else
                                echo ERROR: Unsupported resolution
                                pwd
                                ls
                                exit 1
                            fi
                        fi
                    fi
                fi
                cd ..
            fi
            if [ $k = materialiconsround ]; then
                cd $k
                mkdir -p ../../../../../material-design-round/material-design-round-$i
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-round/material-design-round-$i/$j.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-round/material-design-round-$i/$j.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-round/material-design-round-$i/$j.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-round/material-design-round-$i/$j.svg
                            else
                                echo ERROR: Unsupported resolution
                                pwd
                                ls
                                exit 1
                            fi
                        fi
                    fi
                fi
                cd ..
            fi
            if [ $k = materialiconssharp ]; then
                cd $k
                mkdir -p ../../../../../material-design-sharp/material-design-sharp-$i
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-sharp/material-design-sharp-$i/$j.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-sharp/material-design-sharp-$i/$j.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-sharp/material-design-sharp-$i/$j.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-sharp/material-design-sharp-$i/$j.svg
                            else
                                echo ERROR: Unsupported resolution
                                pwd
                                ls
                                exit 1
                            fi
                        fi
                    fi
                fi
                cd ..
            fi
            if [ $k = materialiconstwotone ]; then
                cd $k
                mkdir -p ../../../../../material-design-twotone/material-design-twotone-$i
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-twotone/material-design-twotone-$i/$j.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-twotone/material-design-twotone-$i/$j.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-twotone/material-design-twotone-$i/$j.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-twotone/material-design-twotone-$i/$j.svg
                            else
                                echo ERROR: Unsupported resolution
                                pwd
                                ls
                                exit 1
                            fi
                        fi
                    fi
                fi
                cd ..
            fi
        done # icon
        cd ..
    done # category
    cd ..
done
cd ../..

svgo -r -i material-design
svgo -r -i material-design-outlined
svgo -r -i material-design-round
svgo -r -i material-design-sharp
svgo -r -i material-design-twotone

cd ..
gulp --iconset tmp/material-design --dest tmp/material-design
gulp --iconset tmp/material-design-outlined --dest tmp/material-design-outlined
gulp --iconset tmp/material-design-round --dest tmp/material-design-round
gulp --iconset tmp/material-design-sharp --dest tmp/material-design-sharp
gulp --iconset tmp/material-design-twotone --dest tmp/material-design-twotone

