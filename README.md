# bnu-diplomas

## Step 1 :

Download all the files with word tables, class by class and per education form, from Google Suite to Ready Tables

## Step 2:

Run the script below to copy the tables for each grade in each education form from Ready-Tables to the three restective folders: `diplomas-bgschool-{distant,present,stavanger}/$i-grade/`

```
./1_copy_tables_to_displomas-folders.sh
```

## Step 3:

`cd` into each folder  `diplomas-bgschool-{distant,present,stavanger}` and run the script `main_start_script.sh`. This script will copy the script `start_script.sh` to each folder `XX-grade` and will run it. After the script  `start_script.sh` finishes, it gets deleted. in the respective `XX-grade` directory.

## Step 4

The script `start_script.sh` pepares the GRADE (digit), runs the **MAIN WORKING SCRIPT**  `"$GRADE"-grade-python-script-tables-format.py`, cleans the PDF folders, moves the PDF files to the PDF directory and removes the docx versions.

## Step 5

Run the script `2_prepare_for_upload.sh`

The script copies the PDF folders with ready diplomas to UPLOAD folder. Then all diplomas can be upload them from UPLOAD folder to Google Suite at one step only
