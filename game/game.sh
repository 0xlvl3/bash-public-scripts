#!/bin/bash

# This game script is to practice my control flow within bash

GLOBAL_LEVEL=1
GLOBAL_EXP=0

# Function for general dialog
function general_dialogue(){
	echo -e "\n${1}"
}

# Function for your dialog
function adventurer_dialogue(){
	echo -e "\nYou: ${1}"
}

# Function for savior
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

if [[ $GLOBAL_EXP -ge 100 ]]; then 
	echo "level up!"
	GLOBAL_LEVEL=$(( $GLOBAL_LEVEL + 1 ))
fi

# function will drop some sort of loot when you defeat a monster
function loot(){
	
	# loot 1 - 5
	LOOT_DROP=$(( 1 + $RANDOM % 5 ))

	case $LOOT_DROP in 
		1)
			echo -e "\nLoot obtained: ${1}";;
		2)
			echo -e "\nLoot obtained: ${2}";;
		3)
			echo -e "\nLoot obtained: ${3}";;
		4)
			echo -e "\nLoot obtained: ${4}";;
		5)
			echo -e "\nLoot obtained: ${5}";;
		esac
}


#Intro

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

# Stage 1
# Stage will consist of monsters level 1 - 5
# Loot will be small 

# Function will heal adventurer 
function heal(){
	HEAL=$(( $RANDOM % 10 ))
	GLOBAL_HP=$(( $HEAL + $GLOBAL_HP ))
	echo -e "\n${GLOBAL_USER_NAME} has healed ${HEAL}"
}

# Function will spawn stage 1 monsters
function spawn_monster(){
	MONSTER=$(( $RANDOM % 4 ))

	case $MONSTER in 
		0)
			MONSTER_NAME="Rat"
			MONSTER_HP=50
			MONSTER_ATTACK=5
			MONSTER_EXP=10
			;;
		1)
			MONSTER_NAME="Bat"
			MONSTER_HP=50
			MONSTER_ATTACK=3
			MONSTER_EXP=5
			;;
		2)
			MONSTER_NAME="Devil"
			MONSTER_HP=30
			MONSTER_ATTACK=7
			MONSTER_EXP=8
			;;
		3)
			MONSTER_NAME="Shell"
			MONSTER_HP=100
			MONSTER_ATTACK=2
			MONSTER_EXP=10
			;;
		esac
}


#Function will fight monsters
function battle(){
	spawn_monster
	echo "${MONSTER_NAME} has spawned"
	sleep 1
	echo "Prepare to fight!"
	sleep 1

	echo "----------. Fight Log .----------"
	# Fight
	until [[ $GLOBAL_HP -le 0 || $MONSTER_HP -le 0 ]]
	do 
		# Rolls to determine attacks
		monster_hit=$(( $RANDOM % $MONSTER_ATTACK ))
		adventurer_attack=$(( $RANDOM % $GLOBAL_ATTACK ))
		
		# Minus hp
		GLOBAL_HP=$(( $GLOBAL_HP - $monster_hit ))
		MONSTER_HP=$(( $MONSTER_HP - $adventurer_attack ))

		# Win or lose
		if [[ $MONSTER_HP -le 0 ]]; then 
			echo "${GLOBAL_USER_NAME} has defeated ${MONSTER_NAME}, gaining ${MONSTER_EXP}"
			loot "sword" "dagger" "hat" "coat" "boots"
			heal
			GLOBAL_EXP=$(( $MONSTER_EXP + $GLOBAL_EXP ))
			break;
		elif [[ $GLOBAL_HP -le 0 ]]; then 
			echo "${MONSTER_NAME} has killed ${GLOBAL_USER_NAME}"
			echo "You lose .... "
			exit 0
		else
			echo "${GLOBAL_USER_NAME} attacks ${MONSTER_NAME} for ${adventurer_attack}"
			echo "${MONSTER_NAME} attacks ${GLOBAL_USER_NAME} for ${monster_hit}"
			echo "${GLOBAL_USER_NAME} has ${GLOBAL_HP} hp remaining"
			echo "${MONSTER_NAME} has ${MONSTER_HP} hp remaining"
		fi 
	done
	echo "----------------------------------"
}

# loop will call various functions depending on user input
function battle_loop(){
	read -p "Walking a monster attacks!
	1) fight
	2) run
	3) run & heal
	What will you do? " CHOICE
	case $CHOICE in 
		1)
			battle;;
		2)
			"You ran";;
		3)
			heal;;
	esac
}

# level up loop, ${1} will be experience goal to level
function stage_progress(){
	until [[ $GLOBAL_EXP -ge ${1} ]]
	do 
		battle_loop
		if [[ $GLOBAL_EXP -ge ${1} ]]; then 
			GLOBAL_LEVEL=$(( $GLOBAL_LEVEL + 1 ))
			echo -e "\n${GLOBAL_USER_NAME} has leveled up!"
			echo "${GLOBAL_USER_NAME} is now level ${GLOBAL_LEVEL}"
		fi 
	done 
}

stage_progress 100
stage_progress 150
stage_progress 200

echo "Woah User:${GLOBAL_USER_NAME} Remaining HP:${GLOBAL_HP} Total Exp:${GLOBAL_EXP}"


