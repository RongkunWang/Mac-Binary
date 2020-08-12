#!/usr/bin/env bash

if [ "$#" -le 0 ]; then
    echo "ERROR need to specify directory"
    exit 0
fi

for fulldir in $1
do
    basename=`basename $fulldir`
    outdir=`dirname $fulldir`/${basename}_png

    mkdir -p $outdir

    #cp ${dir}/*.eps ${dir}_pdf
    #echo ${dir}_pdf/*.eps | xargs -n1 pstopdf 
    sips -s format png ${fulldir}/*.pdf --out ${outdir}
    #rm -rf ${dir}_pdf
done
