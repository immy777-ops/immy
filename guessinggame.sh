#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
    echo $(ls -1 | wc -l)
}

function check_guess {
    local actual_count=$1
    local guess=$2
    
    if [[ $guess -lt $actual_count ]]
    then
        echo "Too low! Try again."
        return 1
    elif [[ $guess -gt $actual_count ]]
    then
        echo "Too high! Try again."
        return 1
    else
        echo "Congratulations! You guessed correctly."
        return 0
    fi
}

function guessing_game {
    local file_count=$(count_files)
    local user_guess
    local correct=1
    
    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while [[ $correct -ne 0 ]]
    do
        read -p "Enter your guess: " user_guess
        
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]
        then
            echo "Please enter a valid number."
            continue
        fi
        
        check_guess $file_count $user_guess
        correct=$?
    done
}

guessing_game