#!/bin/bash

function usage {
    cat <<EOF
$(basename ${0}) is a tool for find the five largest files in a chosen directory

Usage:
    $(basename ${0}) [directory name] 

Options:
    --version, -v     print $(basename ${0}) version
    --help, -h        print this
EOF
}

if [ "$#" -eq 0 ]; then
	usage
	exit 1
fi

directory=$1

sudo find $directory -type f | xargs sudo du -b | sort -rn | head -n 5
