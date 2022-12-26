#!/bin/bash

GLOBAL_GOLD=100

source game_items.sh
# script will create a usable shop in-game

function shop(){
	# greeting
	# confirm you want to look at wears
	# able to sell for gold
	# able to buy if you have enough gold
	
	while true; do 
		read -p "Shop owner: Greetings traveler would you like to see my wears? (y/n)" USER_ANSWER
		case $USER_ANSWER in 
			[yY]*) # Show list of items with price in gp 
					for key in "${!items[@]}"; do 
						echo "${key}: ${items[$key]} gold"
					done
					while true; do
						read -p "Shop owner: Anything you like adventurer (y/n)" USER_ANSWER
						
						case $USER_ANSWER in 
							[yY]*)
								read -p "Which item did you like friend? " USER_SELECT
								if [[ ${items[$USER_SELECT]+_} ]]; then
									echo "That item will be ${items[$USER_SELECT]} gold"
									echo "You give the shop owner ${items[$USER_SELECT]} gold"
									GLOBAL_GOLD=$(( $GLOBAL_GOLD - ${items[$USER_SELECT]} ))
									echo "You have ${GLOBAL_GOLD} remaining "
									break 2 # Break out of both loops
								else 
									echo "Not valid"
									break
								fi 
								break;;
							[nN]*)
								echo "Very well.."
								break;;
						esac
					done

					;;
			[nN]*) # Exit store and return to town 
					echo "Exiting.."
					break
					;;
			esac
		done
}
shop
echo "Well on the road we go"
