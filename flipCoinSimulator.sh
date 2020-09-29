#!/bin/bash -x
function getCoinFace(){
	if [ $1 -eq 1 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
}
toss=$((1+$RANDOM%2))
winner=(`getCoinFace $toss`)
echo "Winner: $winner"
