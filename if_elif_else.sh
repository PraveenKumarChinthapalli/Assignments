# 1. Read a single digit number and write the number in word


read -p "Enter a number between 0 to 9: " character

if [ "$character" = "0" ]; then
    echo "You entered zero."
elif [ "$character" = "1" ]; then
    echo "You entered one."
elif [ "$character" = "2" ]; then
    echo "You entered two."
elif [ "$character" = "3" ]; then
    echo "You entered three."
elif [ "$character" = "4" ]; then
    echo "You entered four."
elif [ "$character" = "5" ]; then
    echo "You entered five."
elif [ "$character" = "6" ]; then
    echo "You entered six."
elif [ "$character" = "7" ]; then
    echo "You entered seven."
elif [ "$character" = "8" ]; then
    echo "You entered eight."
elif [ "$character" = "9" ]; then
    echo "You entered nine."
else
    echo "You did not enter a number between 0 to 9."
fi

echo "================================================"


# 2. Read a Number and Display the week day (Sunday, Monday,…)




read -p "Enter a number between 1 to 7: " weekday


if [ "$weekday" = "1" ]; then
    echo "weekday is Monday"
elif [ "$weekday" = "2" ]; then
    echo "weekday is Tuesday"
elif [ "$weekday" = "3" ]; then
    echo "weekday is Wednesday."
elif [ "$weekdayr" = "4" ]; then
    echo "weekday is Thursday."
elif [ "$weekday" = "5" ]; then
    echo "weekday is friday"
elif [ "$weekday" = "6" ]; then
    echo "weekday is saturday"
elif [ "$weekday" = "7" ]; then
    echo "weekday is sunday"
else
    echo "You did not enter a number between 1 to 7."
fi


echo "================================================"


# 3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,…


read -p "Enter a number between 1, 10, 100, 1000, 10000: " num

if [ "$num" = "1" ] 
then
    echo "unit"
elif [ "$num" = "10" ]
then
    echo "ten"
elif [ "$num" = "100" ]
then
    echo "hundred"
elif [ "$num" = "1000" ]
then
    echo "thousand"
elif [ "$num" = "10000" ]
then
    echo "ten thousand"
else
    echo "enter valid number"
fi

echo "================================================"

<<comment
4. Enter 3 Numbers do following arithmetic operation and find the one that
is maximum and minimum
1. a + b * c 3. c + a / b
2. a % b + c 4. a * b + c
comment

read -p "Enter A variable number " a
read -p "Enter B variable number " b
read -p "Enter C variable number " c

declare -a integers

echo " 1. a + b * c "

mult=$((b*c))
condition1=$((a + mult))
integers[0]=$[condition1]
echo $condition1


echo " 2. a % b + c "
add=$((b+c))
condition2=$((a % add))
integers[1]=$[condition2]
echo $condition2

echo " 3. c + a / b "
div=$((a / b))
condition3=$((c + div))
integers[2]=$[condition3]
echo $condition3

echo " 4. a * b + c"

mult=$((a*b))
condition4=$((mult + c))
integers[3]=$[condition4]
echo $condition4

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
