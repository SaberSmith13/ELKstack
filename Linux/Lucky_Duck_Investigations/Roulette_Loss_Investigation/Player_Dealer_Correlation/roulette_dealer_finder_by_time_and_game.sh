#!/bin/bash
#To run program: ./roulette_dealer_finder_by_time_and_game.sh
#arguments:
#1[date MMDD]
#2[2-digit hour]
#3[AM or PM]
#4[game 1, 2, or 3]
#games 1=blackjack 2=roulette 3=texas hold'em

if [ $4 == 1 ]
	then
		grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1" " $2" " $3" " $4}'
		echo "Blackjack"
	elif [ $4 == 2 ]
	then
		grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1" " $2" " $5" " $6}'
		echo "Roulette"
	else
		grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1" " $2" " $7" " $8}'
		echo "Texas Hold 'em"
fi

