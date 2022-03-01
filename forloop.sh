#!/bin/sh

NAMES="John Jack Bob"
for NAME in $NAMES
  do
    echo "Hello $NAME"
done

# RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done
