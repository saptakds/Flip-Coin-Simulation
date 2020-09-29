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
while [ $heads -lt 21 -a $tails -lt 21 ]
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
if [ $heads -eq $tails ]
then
    echo "Tie"
elif [ $heads -lt $tails ]
then
    echo "Tails won by $(($tails-$heads))"
else
    echo "Heads won by $(($heads-$tails))"
fi
echo "Heads: $heads"
echo "Tails: $tails"
