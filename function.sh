#!/bin/sh

function sayHello() {
  echo "Hello World"
}
sayHello

function greet() {
  echo "Hello, I am $1 and I am $2"
}

greet "Alex" "999"
