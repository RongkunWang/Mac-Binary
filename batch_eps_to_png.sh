#!/bin/bash

#if [ "$#" -le 0 ]; then
    #echo "ERROR need to specify directory"
    #exit 0
#fi

#dir=`basename $1`

#mkdir ${dir}_pdf ${dir}_png 

#cp ${dir}/*.eps ${dir}_pdf
#echo ${dir}_pdf/*.eps | xargs -n1 pstopdf 
#sips -s format png ${dir}_pdf/*.pdf --out ${dir}_png
#rm -rf ${dir}_pdf




if [ "$#" -le 0 ]; then
    echo "ERROR need to specify directory"
    exit 0
fi

#for fulldir in $(find $1 -type d); do
for fulldir in "$@"; do
    echo $fulldir

    basename=`basename $fulldir`
    pdfdir=`dirname $fulldir`/${basename}_pdf
    outdir=`dirname $fulldir`/${basename}_png


    mkdir -p ${outdir} ${pdfdir} 

    #cp ${dir}/*.eps ${dir}_pdf
    #echo ${dir}_pdf/*.eps | xargs -n1 pstopdf 
    cp ${fulldir}/*.eps ${pdfdir}
    echo ${pdfdir}/*.eps | xargs -n1 pstopdf 
    sips -s format png ${pdfdir}/*.pdf --out ${outdir}
    rm -rf ${pdfdir}
done
