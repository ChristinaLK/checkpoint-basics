#!/bin/bash

set -x

CHKPT=checkpoint.txt
MAX_ITER=10

if [ ! -f "$CHKPT" ]
then
  echo "1" > $CHKPT
fi
COUNTER=`cat $CHKPT`

echo $COUNTER && sleep 15
((COUNTER++))
if [ $COUNTER -le $MAX_ITER ]
then
  echo $COUNTER > $CHKPT && exit 85
else
  echo "done" > output.txt && exit 0
fi
