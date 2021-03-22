#!/bin/bash

BACKUPTIME=`date +%b-%d-%y`            #get the current date
DESTINATION=/home/ubuntu/backups/backup-$BACKUPTIME.tar.gz   #create a backup file using the current date in it's name
SOURCEFOLDER=/home/ubuntu/saipavan   #the folder that contains the files that we want to backup
tar -cvf $DESTINATION $SOURCEFOLDER   #create the backup
