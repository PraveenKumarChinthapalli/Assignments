# 1. Read a single digit number and write the number in word


read -p "Enter a number between 0 to 9: " character

case $character in
	0 ) echo "You entered zero."
	   ;;
        1 ) echo "You entered one."
	   ;;
	2 ) echo "You entered two."
	   ;;
	3 ) echo "You entered three."
	   ;;
	4 ) echo "You entered four."
           ;;
	5 ) echo "You entered five."
	   ;;
	6 ) echo "You entered six."
	   ;;
	7 ) echo "You entered seven."
	   ;;
	8 ) echo "You entered eight."
	   ;;
	9 ) echo "You entered nine."
	   ;;
   	* ) echo "You did not enter a number between 0 to 9."
esac

echo "================================================"


# 2. Read a Number and Display the week day (Sunday, Monday,…)

read -p "Enter a number between 1 to 7: " character

case $character in
	1 ) echo "weekday is Monday"
	   ;;
        2 ) echo "weekday is Tuesday"
	   ;;
	3 ) echo "weekday is Wednesday"
	   ;;
	4 ) echo "Yweekday is Thursdat"
	   ;;
	5 ) echo "weekday is Friday"
           ;;
	6 ) echo "weekday is Saturday"
	   ;;
	7 ) echo "weekday is Sunday"
	   ;;
   	* ) echo "You did not enter a number between 1 to 7"
esac


# 3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,…


read -p "Enter a number between 1, 10, 100, 1000, 10000: " num

case $num in
	1 ) echo "Unit"
	   ;;
        10 ) echo "Ten"
	   ;;
	100 ) echo "Hundred"
	   ;;
	1000 ) echo "Thousand"
	   ;;
	10000 ) echo "Ten Thousand"
           ;;
   	* ) echo "Enter avalid number"
esac

<<comment
4. Write a program that takes User Inputs and does Unit Conversion of
different Length units
1. Feet to Inch 3. Inch to Feet
2. Feet to Meter 4. Meter to Feet
comment

read -p "Enter a number: " num

echo "Feet to Inch"

inches=$((num * 12))
echo "$inches inches"

echo "Inch to Feet"

Feet=$((num / 12))
echo "$Feet feet"

echo "Feet to Meter"

meter=$((num * 0.304))
echo "$meter meter"

echo "Meter to Feet"
feet=$((num * 3.28))
echo "$feet"