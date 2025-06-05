#! /bin/bash


## Copy the filled in  tables from Google Suite into the three respective folders stavanger, distant and present in Ready-Tables/
## Change years every year by creating a separate folder for downloaded tables
## Then run _THIS SCRIPT_ to copy the respective downloaded tables to the correct emplacements

for i in {1..11}; do cp ./Ready-Tables/present/$i-grade-data-table-word.docx diplomas-bgschool-present/$i-grade/; done

for i in {1..11}; do cp ./Ready-Tables/distant/$i-grade-data-table-word.docx diplomas-bgschool-distant/$i-grade/; done

for i in {1..11}; do cp ./Ready-Tables/stavanger/$i-grade-data-table-word.docx diplomas-bgschool-stavanger/$i-grade/; done

