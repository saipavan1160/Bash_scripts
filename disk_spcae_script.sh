#!/bin/sh

#Mail_Detials
To_Address="example@gmail.com"
From_Address="name@gmail.com"
Subject="Disk Space Alert"
#max=90%

#Script_begins
df -h | grep '^/dev' | head -1| awk '{ print $5 " " $1 }' | while read output;
do
  echo $output
  used=$(echo $output | awk '{ print $1}' | cut -d '%' -f1 )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $used -ge 90 ]; then
  echo "Subject: Disk Space Alert \n\nThe partition \"$partition\" on $(hostname) has used $used% at $(date)" > /home/ubuntu/diskspace.txt
  sudo ssmtp example@gmail.com < /home/ubuntu/diskspace.txt
fi
done
