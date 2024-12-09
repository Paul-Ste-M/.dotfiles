#!/bin/bash


echo "REP --> How many ounces of water would you like today?"
read WATER
echo "REP --> Ok! $WATER ounces coming up!"
mkdir -p cart
> cart/water.item
for ((i=0; i<=WATER; i++)); do
	echo "water$i" >> cart/water.item
done

