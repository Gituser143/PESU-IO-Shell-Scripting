#!/bin/bash

# Display what the user typed on the command line.
echo "You executed this command: ${0}"

# Tell them how many arguments they passed in.
# (Inside the script they are parameters, outside they are arguments.)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line."

# Display the first three parameters.
echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo

# This link helps understand loops and their variations
# https://www.cyberciti.biz/faq/bash-for-loop/
# https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php


# Loop through all the positional parameters.

# Using For loops
for NAME in "${@}"
do
  echo "You entered the following parameters"
  echo "${NAME}"
done

# Using While loops and shift
while [[ "${#}" -gt 0 ]]
do
  echo "Number of parameters: ${#}"
  echo "Parameter 1: ${1}"
  echo "Parameter 2: ${2}"
  echo "Parameter 3: ${3}"
  echo
  shift
done
