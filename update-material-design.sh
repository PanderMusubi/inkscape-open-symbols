#!/bin/bash
set -e

# Preparations are:
# sudo apt-get install npm gulp
# sudo npm install -g npm
# sudo npm -g install svgo
# npm install

DIRECTORIES='material-design material-design-outlined material-design-round material-design-sharp material-design-twotone'
rm -rf $DIRECTORIES
if [ -e material-design-icons ]; then
    cd material-design-icons
    git pull -r
else
    git clone https://github.com/google/material-design-icons.git
    cd material-design-icons
fi
cd src

for CATEGORY in *; do
    echo $CATEGORY
    cd $CATEGORY
    for ICON in *; do
        echo \ \ $ICON
        cd $ICON
        for STYLE in *; do
            if [ $STYLE = materialicons ]; then
                cd $STYLE
                mkdir -p ../../../../../material-design/material-design-$CATEGORY
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design/material-design-$CATEGORY/$ICON.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design/material-design-$CATEGORY/$ICON.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design/material-design-$CATEGORY/$ICON.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design/material-design-$CATEGORY/$ICON.svg
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
            if [ $STYLE = materialiconsoutlined ]; then
                cd $STYLE
                mkdir -p ../../../../../material-design-outlined/material-design-outlined-$CATEGORY
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-outlined/material-design-outlined-$CATEGORY/$ICON.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-outlined/material-design-outlined-$CATEGORY/$ICON.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-outlined/material-design-outlined-$CATEGORY/$ICON.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-outlined/material-design-outlined-$CATEGORY/$ICON.svg
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
            if [ $STYLE = materialiconsround ]; then
                cd $STYLE
                mkdir -p ../../../../../material-design-round/material-design-round-$CATEGORY
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-round/material-design-round-$CATEGORY/$ICON.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-round/material-design-round-$CATEGORY/$ICON.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-round/material-design-round-$CATEGORY/$ICON.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-round/material-design-round-$CATEGORY/$ICON.svg
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
            if [ $STYLE = materialiconssharp ]; then
                cd $STYLE
                mkdir -p ../../../../../material-design-sharp/material-design-sharp-$CATEGORY
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-sharp/material-design-sharp-$CATEGORY/$ICON.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-sharp/material-design-sharp-$CATEGORY/$ICON.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-sharp/material-design-sharp-$CATEGORY/$ICON.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-sharp/material-design-sharp-$CATEGORY/$ICON.svg
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
            if [ $STYLE = materialiconstwotone ]; then
                cd $STYLE
                mkdir -p ../../../../../material-design-twotone/material-design-twotone-$CATEGORY
                if [ -e 36px.svg ]; then # resolution
                    cp 36px.svg ../../../../../material-design-twotone/material-design-twotone-$CATEGORY/$ICON.svg
                else
                    if [ -e 24px.svg ]; then
                        cp 24px.svg ../../../../../material-design-twotone/material-design-twotone-$CATEGORY/$ICON.svg
                    else
                        if [ -e 20px.svg ]; then
                            cp 20px.svg ../../../../../material-design-twotone/material-design-twotone-$CATEGORY/$ICON.svg
                        else
                            if [ -e 18px.svg ]; then
                                cp 18px.svg ../../../../../material-design-twotone/material-design-twotone-$CATEGORY/$ICON.svg
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
        done # STYLE
        cd ..
    done # ICON
    cd ..
done # CATEGORY

cd ../.. # material-design-icons/src

for DIRECTORY in $DIRECTORIES; do
    svgo -q -r -i $DIRECTORY
    for i in $DIRECTORY/*; do
        gulp --iconset $i --dest .
    done
done
