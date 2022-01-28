# Write a program that takes a input and determines if the number is a prime.

read -p "Enter a number:" num

for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."

<<comment
Extend the program to take a range of number as input and output the Prime
Numbers in that range.
comment


echo enter m and n
read m n
# Here sequence from m to n
for a in $(seq $m $n)
do
    k=0
    for i in $(seq 2 $(expr $a - 1))
    do 
        if [ $(expr $a % $i) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo $a
    fi
done
<<comment
Write a program that takes a command-line argument n and prints a table of the
powers of 2 that are less than or equal to 2^n.
comment


<<comment
Write a program that computes a factorial of a number taken as input.
5 Factorial – 5! = 1 * 2 * 3 * 4 * 5
comment


factorial()
{
    product=$1
           
    # Defining a function to calculate factorial using recursion
    if((product <= 2)); then
        echo $product
    else
        f=$((product -1))
        
# Recursive call

f=$(factorial $f)
f=$((f*product))
echo $f
fi
}

# main program
# reading the input from user
echo "Enter the number:"   
read num
factorial $num