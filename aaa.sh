#!/bin/bash
#
#


for ((i=0; i < 50; i++))
do
    echo "count: $i ------------------"
    cp -p /tmp/aaa.zip ./tmp/$i.zip
    git add .
    git commit -m "test $i"
    git push
    sleep 3
    rm -f ./tmp/$i.zip
done

