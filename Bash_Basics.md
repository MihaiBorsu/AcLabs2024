# Bash Basics


## Resources

https://github.com/LeCoupa/awesome-cheatsheets/blob/master/languages/bash.sh

https://devhints.io/bash

https://wiki.bash-hackers.org/syntax/pe

## List of basic commands

##### Script with shebang, variables and quotes
    #!/usr/bin/env bash

    NAME="John"
    echo $NAME       #=> John
    echo "$NAME"     #=> John
    echo "${NAME}"   #=> John

    echo "Hi $NAME"  #=> Hi John
    echo 'Hi $NAME'  #=> Hi $NAME

##### Conditional execution and exit codes

    true  ; echo $?  #=> 0
    false ; echo $?  #=> 1

    true  && echo YES || echo NO  #=> YES
    false && echo Yes || echo No  #=> No

    true  && echo Yes || echo No ; echo $?  #=> Yes 0
    false && echo Yes || echo No ; echo $?  #=> No 0 #TODO why?

    if true; then
        echo YES
    else
        echo NO
    fi
    echo $?

    # [[ -z STRING ]]	Empty string
    # [[ -n STRING ]]	Not empty string
    # [[ STRING == STRING ]]	Equal
    # [[ STRING != STRING ]]	Not Equal
    # [[ -e FILE ]]	Exists
    # [[ -f FILE ]]	File
    # [[ -d FILE ]]	Directory
    # [[ STRING =~ STRING ]]	Regexp
    # (( NUM < NUM ))	Numeric conditions
    # [[ X ]] && [[ Y ]]	And
    # [[ X ]] || [[ Y ]]	Or

    [[ ]]
    [ ]

##### Shell execution and functions

    echo "current dir: `pwd`"
    echo "current dir: $(pwd)"

    echo "root contents: $(ls -al /)"

    function great() {
        if [[ -z "$1" ]]; then
            echo "No name provided"
        elif [[ -n "$1" ]]; then
            echo "Hello, $1"
        fi
    }

    echo "$(great)"
    echo "$(great Adrian)"




##### Changing variables

    STR="HELLO WORLD!"
    echo ${STR,}   #=> "hELLO WORLD!" (lowercase 1st letter)
    echo ${STR,,}  #=> "hello world!" (all lowercase)

    STR="hello world!"
    echo ${STR^}   #=> "Hello world!" (uppercase 1st letter)
    echo ${STR^^}  #=> "HELLO WORLD!" (all uppercase)

    # ${FOO%suffix}	Remove suffix
    # ${FOO#prefix}	Remove prefix
    # ${FOO%%suffix}	Remove long suffix
    # ${FOO##prefix}	Remove long prefix
    # ${FOO/from/to}	Replace first match
    # ${FOO//from/to}	Replace all
    # ${FOO/%from/to}	Replace suffix
    # ${FOO/#from/to}	Replace prefix


##### LÖÖPS BRØTHER

    # Basic for loop
    for i in /dev/ttyS?; do
        echo $i
    done

    # C-like for loop
    for ((i = 0 ; i < 100 ; i++)); do
        echo $i
    done

    # Range loop
    for i in {1..5}; do
        echo "Welcome $i"
    done

    # Reading lines
    cat GIT_Basics.md | while read line; do
        echo $line
    done






##### Arrays

    # Defining arrays
    Fruits=('Apple' 'Banana' 'Orange')
    Fruits[0]="Apple"
    Fruits[1]="Banana"
    Fruits[2]="Orange"

    # Working with arrays
    echo ${Fruits[0]}           # Element #0
    echo ${Fruits[@]}           # All elements, space-separated
    echo ${#Fruits[@]}          # Number of elements
    echo ${#Fruits}             # String length of the 1st element
    echo ${#Fruits[3]}          # String length of the Nth element
    echo ${Fruits[@]:3:2}       # Range (from position 3, length 2)

    # Operations
    Fruits=("${Fruits[@]}" "Watermelon")    # Push
    Fruits+=('Watermelon')                  # Also Push
    Fruits=( ${Fruits[@]/Ap*/} )            # Remove by regex match
    unset Fruits[2]                         # Remove one item
    Fruits=("${Fruits[@]}" "${Fruits[@]}")  # Duplicate
    Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
    lines=(`cat "logfile"`)                 # Read from file

    # Iteration
    for i in "${arrayName[@]}"; do
        echo $i
    done

    facem un script in care:
    - adaugan shebang la inceput
    - cream doua functii, una ia ca si parametru denumirea unui fisier si verifca daca acesta exista sau nu. Cealallta ia o variabila ca si parametru in care se afla un numar si returneaza dublul acestuia.
    - apelam aceaste functii intr-o alta functie main si pasam parametri din consola functiei main
    - declaram o variablila globala pe care o testam dupa un regex (sa respecte regex-ul) iar mai apoi afisam exit code-ul de la test.



