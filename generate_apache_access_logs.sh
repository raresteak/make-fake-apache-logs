#!/bin/bash
# Create some fake apache log entries
# Author Raresteak
# Check for required files
if [ ! -f commonuseragents.txt ] || [ ! -f small.txt ] || [ ! -f indexes.txt ] || [ ! -f extensions_common.txt ] || [ ! -f httpcodes.txt ]; then
   echo "Missing files: Pull entire github repo"
   echo "git clone https://github.com/raresteak/make-fake-apache-logs.git"
   exit
fi
# Fully random IP's
#IP=$(echo $((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)))
# 10.x.x.x
IP=$(echo 10.$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)))
# Choose a random user agent
UA=$(shuf -n1 commonuseragents.txt)
# choose a random path
myPATH=$(shuf -n1 small.txt)
# choose a random filename
myFILE=$(shuf -n1 indexes.txt)
# choose a random extention
X=$(shuf -n1 extensions_common.txt)
# format date
DATE=$(date +%d/%b/%y:%H:%M:%S)
# make a random size
SIZE=$(echo $RANDOM)
# choose a random http code
HTTPCODE=$(shuf -n1 httpcodes.txt)
# Output log entry
echo "$IP - - [$DATE +0000] \"GET /$myPATH/$myFILE$X HTTP/1.1\" $HTTPCODE $SIZE \"-\" \"$UA\""
