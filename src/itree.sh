#!/bin/bash

# Pre processing.
_IFS=$IFS
IFS=$'\n'   # For processing in list_recursive().


# Input processing.
usage () {
    cat << EOT
Usage:
    $(basename $0) [<option>]

Discription:
    Display directory construct like tree.

Option:
    -p	Search a specified path.
    -d	Search by specified depth.
    -h	Display this.
EOT
}

directory=$(pwd)
res=3

while getopts p:d:h OPT
do
    case $OPT in
        p)
            directory=$OPTARG ;;
        d)
			res=$OPTARG ;;
        h)
            usage
            exit 1;;
        \?)
            usage
            exit 1 ;;
    esac
done

if [ ! -e "$directory" ]; then
    echo "$directory is not exit"
    exit 1
fi


# Main processing.
list_recursive () {
    local filepath=$1
    local res=$2
    local indent=$3

    echo "${indent}${filepath##*/}"

    res=$(("$res"-1))
    if [ "$res" -ge 0  ] && [ -d "$filepath" ]; then
        local fname
        for fname in $(ls "$filepath")
        do
            list_recursive "${filepath}/${fname}" "$res" "  $indent"
        done
    fi
}

echo "$directory"
list_recursive "$directory" "$res" ""


# Post processing.
IFS=$_IFS
