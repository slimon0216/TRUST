#!/bin/bash

dir=$1
round=5
for i in $( seq 0 $round);
do
     ./trianglecounting.bin $dir 1 1024 1024 1 >> result.txt
done

grep 'seconds:' result.txt | awk -F ':' '{sum += $2; count++} END {print "Average:", sum/count * 1000, "ms"}'
rm result.txt