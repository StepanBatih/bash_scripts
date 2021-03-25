#!/bin/bash

pyTwo=$(python2 --version 2>&1)
pyThree=$(python3 --version 2>&1)

a=$(python2 --version 2>&1 | sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/')
b=$(python3 --version 2>&1 | sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/')

if ((a < b ))
then 
echo "On your computer install $pyTwo and $pyThree 
Please use Python 3  because $pyTwo is not supported ! "
else
echo "On your computer install only $pyThree . Please use it !"
fi
