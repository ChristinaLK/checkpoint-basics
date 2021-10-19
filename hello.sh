#!/bin/bash

CHKPT=checkpoint.file

if [ ! -f "$CHKPT" ]
then
  echo "1" > $CHKPT
fi
mkdir -p outputs

val=`cat $CHKPT`

while [ $val -le 10 ]
do
  echo $val
  sleep 30
  touch outputs/$val.txt
  ((val++))
  echo $val > $CHKPT
  exit 85
done
