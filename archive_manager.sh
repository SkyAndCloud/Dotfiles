#!/bin/bash
#Name: self_compression.sh
#Time: 2016/4/2

des="."

compress()
{
    if [ $# -ne 2 ]; then
        exit 1
    fi

    src=$1
    ext=${src#*.}
    if [[ $ext = "zip" ]]; then
        unzip $1 -d $2
    elif [[ $ext = "tar" ]]; then
        tar -xvf $1 -C $2
    elif [[ $ext = "tar.gz" ]]; then
        tar -zxv -f $1 -C $2
    elif [[ $ext = "tar.bz2" ]]; then
        tar -jxv -f $1 -C $2
    else
        echo "filetype .$ext not supported!"
    fi
}

if [ $# -eq 1 ]; then
    if [[ $1 = "--list" ]]; then
        echo "Supported file types: zip tar tar.gz tar.bz2"
        exit 0
    else
        compress $1 $des
        exit 0
    fi
elif [ $# -eq 2 ]; then
    compress $1 $2
    exit 0
else
    echo "Usage: $0 --list"
    echo "       $0 src_file des_dir"
    echo 
    exit 1
fi
