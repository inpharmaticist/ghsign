#!/bin/bash

#The two lines below are the local and external addresses synced by a cloud service (currently formatted for Keybase on a linux machine).
local=~/Desktop/signgit
interweb=https://raw.githubusercontent.com/inpharmaticist/ghsign/main

#Script
#cd ghsign
echo 'What message would you like to sign? (Type "|" aka pipe when done)
'
read -d'|' userentry

datetime=`date +"%m%d%Y%H%M%S"`
echo "$userentry"|gpg --clearsign > $datetime.txt

#echo "$userentry" | gpg --clearsign | nc termbin.com 9999

git add .
wait
git commit -m "$datetime"
wait
git push origin main
wait
inpharmaticist
wait
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
wait


echo "
Here is your message:
-----------------------------
$userentry
$interweb/$datetime.txt
-----------------------------

Press Enter when done"
read userentry
