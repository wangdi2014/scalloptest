#!/bin/bash

if [ "$#" -ne "1" ]
then
	echo "usage $0 .tex"
fi

dir=`dirname $0`
header=$dir/headers
tmp=./shao.tmp.tex

cat $header > $tmp
cat $1 >> $tmp
echo "\end{document}" >> $tmp

mv $tmp $1
