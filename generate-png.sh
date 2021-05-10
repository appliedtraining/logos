#!/bin/bash

BUILD_PATH='build'
APPS=(console hire insight learn perform) 
SIZES=(16 32 64 128 256 512)

print_usage() {
    echo ''
    echo -e "Usage: ./generate-png.sh"
    echo ''
}

ensure_folder() {
    if [[ ! -d $1 ]]
    then
        echo 'folder $1 does not exist. Creating it.'
        mkdir -p $1
    fi
}

if [[ $1 == '-h' ]]
then
    print_usage
else
    for app in "${APPS[@]}"
    do
        folder_path="$BUILD_PATH/$app/png"
        ensure_folder $folder_path

        for size in "${SIZES[@]}"
        do
            inkscape --export-filename="$folder_path/$size.png" -w $size --export-area-drawing "src/$app/logo.svg"
        done
    done

fi
