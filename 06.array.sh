#!/bin/bash
# declare an array
Movies=("RRR" "KGF" "Bahubali" "Pushpa" "Vikram" "Vikram Vedha")
# print the array
echo "First Movies:${Movies[0]}"
echo "Second Movies:${Movies[1]}"
# print all the elements of the array
echo "All of the movies are :${Movies[@]}"