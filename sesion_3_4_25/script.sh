#!/usr/bin/env bash


NAME="Alin"
# John_USER

echo $NAME_USER
# echo "$NAME" "_USER"     #=> 
# echo "${NAME}_USER"   #=> 

# echo "Hi $NAME"  #=> 
# echo "Hi \$NAME"  #=> 
# echo 'Hi $NAME'  #=> 

# STRING="AC LABS"



# [[ -z $STRING ]] ||  echo "echo "$NAME" "_USER""
# [[ -n $STRING ]] || echo "echo "$NAME" "_USER""
# [[ STRING == STRING ]]
# [[ STRING != STRING ]]

PLIN="contin text si mere"

# if [[ $PLIN == *"mere"  ]] ; then
#     echo YES
# else
#     echo NO
# fi

reg_search=".*mere.*"

if [[ $PLIN =~ $reg_search  ]] ; then
    # echo YES
else
    # echo NO
fi

function great() {
    if [[ -z $1 ]]; then
        # echo "No name provided"
    else
        # echo "Hello, $1"
    fi
}

# echo "$(great)"
# echo "$(great Mihai)"
