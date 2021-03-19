#!/bin/bash

au_files_path="/home/ubuntu/saipavan"
files_list=($(ls ${au_files_path}/*.au))

files_size=${#files_list[@]}
echo "Total files are: ${files_size}"

for (( i=0; i<${#files_list[@]}; i++ ))
do
        file_duration=$(soxi -D ${files_list[$i]} | awk -F '.' '{print $1}')
        if [[ ! -d "${file_duration}_second/" ]]
then
echo "${files_list[$i]} Duration:${file_duration}"  > /home/ubuntu/saipavan/output/$file_duration-seconds.txt
fi


done
exit 0
