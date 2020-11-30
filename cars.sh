#! /bin/bash
# cars.sh
# Jason Bohlinger

input=1
while [ $input -ne 3 ]
do
   echo "Type the number 1 to enter a new car"
   echo "Type the number 2 to display the list of cars"
   echo "Type the number 3 to quit and exit the program"
   read input
   case $input in
   1)
      echo "Enter the car's year"
      read year
      echo "Enter the make"
      read make
      echo "Enter the model"
      read model
      echo "$year:$make:$model" >> My_old_cars
      ;;
   2)
      sort My_old_cars
      ;;
   3)
      echo "Goodbye"
      ;;
   esac
done
