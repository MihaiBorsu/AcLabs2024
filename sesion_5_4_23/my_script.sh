#!/usr/bin/env bash

# NAME="John"
# WORKSPACE="/root/playground/ac-labs-scm/sesion_5_4_23"

# echo "Hi $NAME"
# echo 'Hi $NAME'
# echo 'Hi ${NAME}'

# if [[ -e ${WORKSPACE}/activity_file.txt ]]; then
#     echo YES
# else
#     echo NO
# fi

# function my_function(){
#     local var="test"
#     echo $var
# }

# echo $var

# echo $?

# STR="HELLO WORLD!"

# echo ${STR,,}
# echo ${STR,}
# echo ${STR}

# Fruits=('Apple' 'Banana' 'Orange')

# echo ${#Fruits}

function my_func(){
    local option=$1

    [[ -e ${option} ]] && echo "exista" || echo "nu exista" 

    echo $option
}

function my_func2(){
    local received=$1
    echo $received
}

function main(){
    local stparam=$1
    local scdparam=$2
    my_func $stparam
    my_func2 $scdparam
}

main $@