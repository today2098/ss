#!/bin/bash

if [ $# != 2 ]; then
    echo "Number of arguments is wrong.";
    exit 1
fi

mv "$1" .tmp.file
mv "$2" "$1"
mv .tmp.file "$2"
