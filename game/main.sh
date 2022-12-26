#!/bin/bash

# main will serve as script which is ran to play
source intro.sh
source game_items.sh
source shop.sh

echo "----"

for key in "${!items[@]}"; do 
	echo "${key}: ${items[$key]} ooowow"
done

shop
