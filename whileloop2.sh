#!/bin/sh

while [ "$CORRECT" != "y" ]
do
  read -p "Enter your name: " NAME
  read -p "Is ${NAME} correct? [y/n] " CORRECT
done
