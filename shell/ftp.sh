#!/bin/bash

# Function definitions
help(){
        cat << EOF
Commands may be abbreviated.  Commands are:

!		    debug       mdir        sendport    site
$		    dir         mget	    put		    size
account		disconnect	mkdir		pwd		    status
append		exit		mls		    quit		struct
ascii		form		mode		quote		system
EOF
}

Ls(){
    echo "Ls function execution."
}

#Code definitions
while true
do

    echo -n "ftp> "
    read CMD
    case $CMD in
        'help') Help ;;
        'ls') : ls ;;
        'quit') break ;;
        *) echo "?Invalid command" ;;
    esac
done