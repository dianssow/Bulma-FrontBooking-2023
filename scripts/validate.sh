#!/bin/bash 

M=5

if curl -s -f --max-time="$M" http://localhost > /dev/null; then 
  echo "Failed: Unable to reach the nginx server"
  exit 1
else
  echo "Successfull: Server nginx active"
  exit 0
fi
