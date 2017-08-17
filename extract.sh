#!/bin/bash
#Name: self_extraction.sh
#Time: 2016/4/2

des="."

extract()
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
    elif [[ $ext = "tar.gz" ]] || [[ $ext = "tgz" ]]; then
        tar -zxv -f $1 -C $2
    elif [[ $ext = "tar.bz2" ]] || [[ $ext = "tar.bz" ]]; then
        tar -jxv -f $1 -C $2
    elif [[ $ext = "tar.xz" ]]; then
        tar -Jxv -f $1 -C $2
    elif [[ $ext = "rar" ]]; then
        unrar x $1 $2
    elif [[ $ext = "7z" ]]; then
        7z e $1 -o $2
    else
        echo "filetype .$ext not supported!"
    fi
}

if [ $# -eq 1 ]; then
    if [[ $1 = "--list" ]]; then
        echo "Supported file types: zip tar tar.gz tgz tar.bz2 tar.xz rar 7z"
        exit 0
    else
        src_dir=$1
        src_dir=${src_dir%%.*}
        if [ -e $src_dir ]; then
            echo
        else
            mkdir -p $src_dir
            extract $1 $src_dir
        fi
    fi
else
    echo "Usage: $0 --list"
    echo "       $0 src_file"
    echo 
    exit 1
fi
