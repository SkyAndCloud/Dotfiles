#!/bin/bash
list=`find /home/yongshan/Pictures/Qiniu -type f`
for img_addr in $list;
do
    img_name=${img_addr##*/}
    echo -e "$img_addr ---> ![](http://o9h9w1ysg.bkt.clouddn.com/$img_name)"
done
