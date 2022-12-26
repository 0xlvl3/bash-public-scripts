#!/bin/bash

# use associative arrays to create a shop
# key will be item, value will be gp value
# first link with loot function
# create a shop in a town
# create shop front that matches item value

# declaring an associative array (dictionary)
declare -A items_id
declare -A items

items_id[1]="Sword"
items_id[2]="Hat"
items_id[3]="Coat"
items_id[4]="Boots"
items_id[5]="Axe"

# placing items within our associative array
items['Sword']=5
items['Hat']=10
items['Coat']=15
items['Boots']=17
items['Axe']=5

read -p "Pick a choice " choice
if [[ ${items_id[$choice]} -eq 1 ]]; then
	echo "Value at id1, key1: ${items[0]}"
fi

# listing out the keys in our associative array
# echo "Listing keys"
# echo "${!items[@]}"

# listing out the values in our associative array
# echo -e "\nListing values"
# echo -e "${items[@]}\n"

# looping through each key and value in our associative array
# for key in "${!items[@]}"; do 
#	echo "$key: ${items[$key]}"
# done

