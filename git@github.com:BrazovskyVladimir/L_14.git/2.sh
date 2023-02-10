#!/bin/bash
sed 's/:/ /' commands.src | awk '{$1="";print $0}' >> commands.res
exec 0< commands.res
while read line
do
eval $line 1>>res.txt 2>>err.txt
done