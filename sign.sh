#!/bin/bash

#The two lines below are the local and external addresses synced by a cloud service (currently formatted for Keybase on a linux machine).
local=~/Desktop/signgit
interweb=https://raw.githubusercontent.com/inpharmaticist/pysign/main/

#Script
cd Desktop
echo 'What message would you like to sign? (Type "|" aka pipe when done)
'
read -d'|' userentry

datetime=`date +"%m%d%Y%H%M%S"`
echo "$userentry"|gpg --clearsign > $datetime.txt

echo "
Here is your message:
-----------------------------
$userentry
$interweb/$datetime.txt
-----------------------------

Press Enter when done"
read userentry
