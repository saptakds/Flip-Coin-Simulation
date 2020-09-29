#!/bin/bash -x
function getCoinFace(){
	if [ $1 -eq 1 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
}
heads=0
tails=0
for i in `seq 1 10`
do
	toss=$((1+$RANDOM%2))
	winner=(`getCoinFace $toss`)
	if [ $winner = "Heads" ]
	then
		((heads++))
	else
		((tails++))
	fi
done
echo "Heads: $heads"
echo "Tails: $tails"
