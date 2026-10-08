#!/bin/bash 

M=5

if curl -s -f --max-time "$M" http://localhost > /dev/null; then 
  echo "Successfull: Server nginx active"
  exit 0
else
  echo "Failed: Unable to reach the nginx server"
  exit 1

fi
