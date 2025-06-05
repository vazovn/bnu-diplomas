#! /bin/bash

GRADE=
DIPLOMA=
GRADE_BIS=


for file in `ls | grep -E '^[1-9]{1,2}-grade|^[1-9]{1}-grade'`; do

  echo $file

  GRADE=${file:0:1}
  GRADE_BIS=${file:0:2}

  if [[ $GRADE > 0 ]] && [[ $GRADE_BIS == 1[012] ]]; then
     echo "GRADE IS DOUBLE DIGIT" $GRADE_BIS
     GRADE=$GRADE_BIS
     break
  elif [[ $GRADE > 0 ]]; then
     echo "GRADE IS " $GRADE
     GRADE=$GRADE
     break
  fi
done


python3 "$GRADE"-grade-python-script-tables-format.py

if [[ -d PDF-STAVANGER-$GRADE-GRADE ]] ; then
    rm -rf PDF-STAVANGER-$GRADE-GRADE
    mkdir PDF-STAVANGER-$GRADE-GRADE
    echo "Deleted existing and created a new directory for PDF files"
else
    mkdir PDF-STAVANGER-$GRADE-GRADE
    echo "Created directory for PDF files"
fi

## move the PDF files to the PDF directory
mv *.pdf PDF-STAVANGER-$GRADE-GRADE
echo "Moved the PDF files to the PDF directory"

## remove the docx versions
for file in `ls | grep -E '^[1-9]{3}'`; do
  DIPLOMA=${file:0:1}
  if [[ $DIPLOMA !=  $GRADE ]]; then
     rm $DIPLOMA*
     echo "Deleted the docx files"
     break
  else
    echo "Delete docx files manually"
  fi
done
