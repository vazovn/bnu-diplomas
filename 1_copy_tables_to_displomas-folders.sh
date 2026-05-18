#! /bin/bash

## Copy the tables filled in by the teachers from Google Suite
## to the respective three directories diplomas-bgschool-{present,distant,stavanger}
## for processing. The directory from Google Suite shall have the name Подготовка-за-дипломите-$year/diplomas-bgschool-$eduform-teachers
## where $year is the school year and $eduform is present, distant or stavanger

## Pull from Google Disk
FOLDER_URL="https://drive.google.com/drive/folders/1IV3HPtcDKJYTiNrzzgEuez5UP--n_1v_"
gdown --folder "$FOLDER_URL"

## Process
read -p "Enter year: " year

for eduform in present distant stavanger; do
    for i in {1..12}; do
       if [[ -f "Подготовка-за-дипломите-$year/diplomas-bgschool-$eduform-teachers/$i-grade/$i-grade-data-table-word.docx" ]] ; then
          echo "There is a class $eduform-$i-grade"
          if [[ ! -d diplomas-bgschool-$eduform/$i-grade/ ]] ; then
             mkdir diplomas-bgschool-$eduform/$i-grade/
             echo "The directory for $eduform-$i-grade was missing. Created now!!"
          fi
          cp \
          "./Подготовка-за-дипломите-$year/diplomas-bgschool-$eduform-teachers/$i-grade/$i-grade-data-table-word.docx" \
          "./diplomas-bgschool-$eduform/$i-grade/"
          echo "Copied $i-grade-data-table-word.docx to diplomas-bgschool-$eduform/$i-grade/"
       fi
    done
done
