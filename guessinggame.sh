#!/bin/bash

function guessinggame {
  # a function that asks the user to guess the number of files 
  # in the current directory
  echo "How many files are in the current working directory?"
  read response
  number_of_files=$(ls -1 | wc -l)
  while [[ $response -ne $number_of_files ]]
  do
    if [[ $response -lt $number_of_files ]]
    then
      echo "Your guess was too low. Please try again."
    else
      echo "Your guess was too high. Please try again."
    fi
    read response
  done
  echo "Congratulations! You guessed the correct number of files."
}

guessinggame