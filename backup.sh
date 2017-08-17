#!/bin/bash
tar -cvpJf "/home/yongshan/.archlinux.`date +%Y-%m-%d`.tar.xz" --exclude=/proc --exclude=/lost+found --exclude=/tmp --exclude=/sys --exclude=/media --exclude=/home --exclude=/mnt /
