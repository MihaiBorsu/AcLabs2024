#!/usr/bin/env bash





# NAME="Alin"
# John_USER

# echo $NAME_USER         #=> John
# echo "$NAME" "_USER"     #=> John
# echo "${NAME}_USER"   #=> John

# echo "Hi $NAME"  #=> Hi John
# echo "Hi \$NAME"  #=> Hi John
# echo 'Hi $NAME'  #=> Hi $NAME






# [[ -z STRING ]]	Empty string
# [[ -n STRING ]]	Not empty string
# [[ STRING == STRING ]]	Equal
# [[ STRING != STRING ]]	Not Equal

# PLIN="contin text si mere"

# if [[ $PLIN == *"mere"*  ]] ; then
#     echo YES
# else
#     echo NO
# fi

# reg_search=".*mere.*"

# if [[ $PLIN =~ $reg_search  ]] ; then
#     echo YES
# else
#     echo NO
# fi

# if [[ $PLIN =~ ".*mere.*"  ]] ; then
#     echo YES
# else
#     echo NO
# fi





function great() {
    if [[ -z "$1" ]]; then
        echo "No name provided"
    else
        echo "Hello, $1"
    fi
}

echo "$(great)"
echo "$(great Adrian)"
