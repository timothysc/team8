#!/bin/bash
while true; 
do
   ddd=`date +%H:%M:%S,%s` ;
   raw=`kubectl get pods` ;
   running=`echo $raw | grep unning | wc -l` ;
   pending=`echo $raw | grep ending | wc -l` ;
   echo "$ddd,$running,$pending" ;
   sleep 1;
done