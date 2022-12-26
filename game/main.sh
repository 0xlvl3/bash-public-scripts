#!/bin/bash

# main will serve as script which is ran to play
source game_items.sh

items=(${!items[@]})

echo "----"
key=${items[0]}
echo "${key} is here"
