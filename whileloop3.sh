#!/bin/sh

# read /etc/fstab line by line
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < /etc/fstab

echo ""
echo ">=(((*>"
echo ""

# read from the output of a command
grep UUID /etc/fstab | while read LINE
do
  echo "UUID: ${LINE}"
done

echo ""
echo ">=(((*>"
echo ""

grep UUID /etc/fstab | while read UUID REST
do
  echo "UUID: ${UUID}"
done
