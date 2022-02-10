#!/bin/bash
rm -vi ./access.log 
count=1
echo "Populating ./access.log"
while [ $count -le 10000 ]; do
  ./generate_apache_access_logs.sh >> access.log
  ((count++))
done
