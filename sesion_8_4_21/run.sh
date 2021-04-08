#!/usr/bin/env bash

# set -x


ec="__"
if [[ -f dacia.2021.txt ]] ; then
    ec="$?"
    echo YES
else
    ec="$?"
    echo NO
fi
echo $ec
