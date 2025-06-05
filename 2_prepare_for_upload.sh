#! /bin/bash


## The procedure for diploma generation (start_script.sh in every folder 
# diplomas-bgschool-* stores them in a PDF folder.
# Use _THIS SCRIPT_ to copy the PDF folders with ready diplomas to UPLOAD folder.
# Then you can upload them from there upload them to Google Suite


cd ./diplomas-bgschool-present
for i in {1..11}; do cp -rf $i-grade/PDF-PRESENT-$i-GRADE ../UPLOAD/; done
cd ..

cd ./diplomas-bgschool-stavanger
for i in {1..11}; do cp -rf $i-grade/PDF-STAVANGER-$i-GRADE ../UPLOAD/; done
cd ..

cd ./diplomas-bgschool-distant
for i in {1..11}; do cp -rf $i-grade/PDF-DISTANT-$i-GRADE ../UPLOAD/; done
cd ..
