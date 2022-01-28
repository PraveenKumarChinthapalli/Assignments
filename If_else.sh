
#!/bin/bash -x


# 1)Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value


declare -a integers

for ((i=1;i<=5;i++))
do
  random_num=$((RANDOM%1000))
  integers[i]=$[random_num]
  
done
echo ${integers[@]}

max=${integers[0]}
min=${integers[0]}

for i in "${integers[@]}"
do
   
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

   
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Max is: $max"
echo "Min is: $min"

echo "================================"

# 2) Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.

read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if (( (($Month >= 3 && $date <= 20) && ($Month <= 6 && $date <= 20) && ($date<31)) ))
then
        echo $Month $date "True";
else

        echo "False";
fi


echo "================================"


# 3) Write a program that takes a year as input and outputs the Year is a Leap Year or not a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400.

echo "Enter the year (YYYY)"
read year

if [ $((year % 400)) -eq 0 ]
then
    echo "its a leap year"
elif [ $((year % 4)) -eq 0 ]
then
    echo "its a leap year"
elif [ $((year % 100)) -eq 0 ]
then
    echo "its a leap year"
else
    echo "its not a leap year"
fi


echo "================================"

# 4) Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.

coinFlip=1
randomCheck=$((RANDOM%2+1))

if [ $coinFlip -eq $randomCheck ]
then
    echo "Heads"
else
    echo "Tails"
fi