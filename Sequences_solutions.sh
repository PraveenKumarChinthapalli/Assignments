#  "========>Sequences Practice Problems<========"

#  1.Use Random Function (( RANDOM )) to get Single Digit

echo "Single digit random number: "$((RANDOM%10))

echo "======================"

#  2.Use Random to get Dice Number between 1 to 6

echo "Dice Number is: "$((RANDOM%6+1))

echo "======================"


# 3.Add two Random Dice Number and Print the Result

Dice_1=$((RANDOM%6+1))
Dice_2=$((RANDOM%6+1))
sum=$((Dice_1+Dice_2))
echo "Sum of two dice numbers: "$sum


echo "======================"


# 4.Write a program that reads 5 Random 2 Digit values , then find their sum and the average


sum=0
for ((i=1; i<=5; i++))
do
  n=$((RANDOM%6+1))
  sum=$(($sum + $n))
done

echo "Sum of 5 Random 2 Digit values: " $sum
avg=$((sum/5))
echo "Average of 5 Random 2 Digit values: " $avg


echo "=========================="


# 5.Unit Conversion
#    a. 1ft = 12 in then 42 in = ? ft
#    b. Rectangular Plot of 60 feet x 40 feet in meters
#    c. Calculate area of 25 such plots in acres



#!/bin/sh
a=42
b=12

ft=$((a/b))
in=$((a%b))

echo "a) 42inches is equal to: $ft ft $in inches "

echo "=========================="


w=40
h=60
f=0.304
z=$((w*h))
meter=$((z*f))
p=`echo "scale=5; $meter" | bc`
echo "feet in meters $p"

