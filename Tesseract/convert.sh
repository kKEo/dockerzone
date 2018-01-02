#!/bin/bash

DIR=$1
FILENAME=$2
FILE=${2%%.*}

cd $DIR

echo "Converting: $DIR$FILE.pdf" 
echo "Extract first page: $FILE.png"
mv $DIR$FILE.pdf $DIR../output
cd $DIR../output
pwd
convert -density 175 $FILE.pdf[0] $FILE.png

echo "[`pwd`]Convert page to pdf: $FILE-txt.pdf"
tesseract -l pol $FILE.png $FILE-175-txt pdf 

echo "Remove temp files: $FILE.png"
rm -v $FILE.png $FILE.pdf 
