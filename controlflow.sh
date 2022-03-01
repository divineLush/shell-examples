#!/bin/sh

NAME="John"

if [ "$NAME" == "John" ]
then
  echo "Your name is John"
fi

if [ "$NAME" == "Jack" ]
then
  echo "Your name is Jack"
else
  echo "Your name is NOT Jack"
fi

if [ "$NAME" == "John" ]
then
  echo "Your name is John"
elif [ "$NAME" == "Jack" ]
then
  echo "Your name is Jack"
else
  echo "Your name is NOT John or Jack"
fi

NUM1=1
NUM2=2
if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi
