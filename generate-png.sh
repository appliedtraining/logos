#!/bin/bash

BUILD_PATH='build'

get_folder_name() {
    if [ "$#" -gt 0 ]
    then
        echo $1
    else
        echo 'blue'
    fi
}

print_usage() {
    echo ''
    echo -e "Usage: ./generate-png.sh [app_name: console | hire | insight | learn | perform]"
    echo ''
}

ensure_folder() {
    if [[ ! -d "$BUILD_PATH/$1" ]]
    then
        echo 'folder "$BUILD_PATH/$1" does not exist. Creating it.'
        mkdir "$BUILD_PATH/$1"
    fi
}

if [[ $1 == '-h' ]]
then
    print_usage
else
    sizes=(16 32 64 128 256 512)
    folder_name=`get_folder_name $@`

    ensure_folder $folder_name

    for size in "${sizes[@]}"
    do
        inkscape --export-area-drawing --export-png "$BUILD_PATH/$folder_name/png/$size.png" -w $size "src/$folder_name/logo.svg"
    done
fi
