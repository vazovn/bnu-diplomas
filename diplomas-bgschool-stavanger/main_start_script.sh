#! /bin/bash


for i in `ls`; do 
   if [[ -d $i ]]; then
      cp start_script.sh $i
      cd $i
      /bin/bash start_script.sh
      rm start_script.sh
      cd ..
   else
      echo "$i is not a directory"
   fi
done

echo "Main script : all scripts run!"
