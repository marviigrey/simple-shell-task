#!/bin/bash

while true 
do
  echo "1. shutdown"
  echo "2. restart"
  echo "3. exit"
  read -p "enter your choice: " choice
if [ $choice -eq 1 ]
then
    shutdown
elif [ $choice -eq 2 ]
then
    restart
elif [ $choice -eq 3 ]
then
   break
else
   continue
fi
