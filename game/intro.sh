#!/bin/bash

GLOBAL_LEVEL=1
GLOBAL_EXP=0

# Function for general dialog.
function general_dialogue(){
	echo -e "\n${1}"
}

# Function for your dialog.
function adventurer_dialogue(){
	echo -e "\nYou: ${1}"
}

# Function for savior.
function savior_dialogue(){
	echo -e "\nWoman: ${1}"
}

#Function for new line
function new_line(){
	echo -e " "
}

# Function for inline
function inline(){
	echo -n "${1} "
}

general_dialogue "You awake to find yourself in a strange place, 
lying on a bed of soft blankets. 
A warm fire burns in the fireplace, 
and a friendly face smiles down at you."
#sleep 3

adventurer_dialogue 'Who are you?" you demand, your voice ragged from days of unconsciousness.'
#sleep 2

savior_dialogue '"I am your rescuer," 
the woman says, her voice calm and reassuring. 
"You were unconscious when I found you, 
so I brought you here to rest and recover. 
You have been asleep for days."'
#sleep 3

general_dialogue 'As the woman tends to your needs and feeds you warm broth, 
you begin to feel your strength returning. 
Finally, you are fully rested and ready to face the world again.'
#sleep 3

new_line
inline "Woman:"
read -p "What is your name adventurer? " GLOBAL_USER_NAME
#sleep 3

adventurer_dialogue '"Thank you for your kindness," 
you say, your gratitude sincere. 
"Is there anything I can do to repay you?" The womans smile fades, 
replaced by a serious expression.'
#sleep 3

savior_dialogue '"As a matter of fact, there is," she says, her voice heavy with gravity. 
"There is a great danger threatening our land - an evil sorcerer who seeks to enslave us all.
He is a powerful and malevolent being, with dark magic at his command. 
He has already conquered many lands and enslaved their people, 
and now he has his sights set on ours. And to make matters worse, he has my son. 
I need a brave adventurer like you to help me defeat him and rescue my son. 
Will you take on this challenge?"'
#sleep 4 

general_dialogue 'You hesitate, considering the weight of the womans words. "Do you accept the challenge? (y/n)"'
while true; do 
	read -p 'Well what is your answer? ' ANSWER 
	case $ANSWER in 
		[Yy]*) echo "You have accepted the challenge!"; break;;
		[Nn]*)
			echo "You decline the challenge"
			exit 0
			;;
		esac
	done
#sleep 3 

echo "Well ${GLOBAL_USER_NAME} I found you not far from here,
you we're pretty beat up so I quickly got you in to bed. You've
been out for 3 days"
#sleep 3

new_line
inline "Woman: "
read -p "I see so you're a - 
------------;
1 - Warrior |
2 - Mage    |
3 - Rouge   |
============+
select an option (1 - 3): " user_select
sleep 1
echo "..."
case $user_select in 
	1)
		GLOBAL_TYPE="Warrior"
		GLOBAL_HP=40
		GLOBAL_ATTACK=10
		;;
	2)
		GLOBAL_TYPE="Mage"
		GLOBAL_HP=20
		GLOBAL_ATTACK=30
		;;
	3)
		GLOBAL_TYPE="Rouge"
		GLOBAL_HP=25
		GLOBAL_ATTACK=25
		;;
esac

echo -e "\nWell ${GLOBAL_USER_NAME} according to your type ${GLOBAL_TYPE}
you have ${GLOBAL_HP} hp and ${GLOBAL_ATTACK} attack"

echo "You are level ${GLOBAL_LEVEL}"
