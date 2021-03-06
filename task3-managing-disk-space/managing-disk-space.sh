#!/bin/bash
find /home/ubuntu/audios/audio* -cmin +2880 -type f > files_to_delete
echo "" > deleted-files-`date '+%d-%m-%Y'`.log
for line in `cat files_to_delete`
do
echo `ls -l $line | awk '{split($0,a," "); print $9,$7,$6,$8}'` `date '+%d-%m-%YT%H:%M:%S%:::z'` >> deleted-files-`date '+%d-%m-%Y'`.log
done
find /home/ubuntu/audios/audio* -cmin +2880 -type f -delete
rm -rf files_to_delete
