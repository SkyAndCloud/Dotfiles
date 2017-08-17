#!/bin/bash

if [ $# -ge 1 ]; then
    cd $1
    shift;
    src_file=$1
    zip -r "${src_file%%.*}.zip" $@ 
    echo "${src_file%%.*}.zip $@" > /tmp/log
    cd -
fi
