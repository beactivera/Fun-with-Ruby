def random_number_generator()
   return rand(1..100) 
end


def is_too_big(machine_number, user_number)
    return machine_number < user_number
end


def is_too_small(machine_number, user_number)
    return machine_number > user_number
end


def guess_one_more_time()
    puts "Try again. What is the number? "
    guessed_number = gets.chomp
    return guessed_number.to_i
end

puts "Hi User! \nWelcome in Guessing Game! \nThe Game Machine is randomizing the number in range 1-100\n
       Would you like to quess the number?(y/n)\n"

user_answer = gets.chomp

while user_answer == "y"
    puts "\nSo let's play the game.Good luck!\n\n"
    number_from_the_machine = random_number_generator()
    # for testing
    # puts "(---#{number_from_the_machine}---)\n"

    puts "The machine drew a number.\n\n What is the number? "

    guessed_number = gets.chomp
    user_number = guessed_number.to_i

    while number_from_the_machine != user_number
        puts "Your number is incorrect :( \n"
        if is_too_big(number_from_the_machine, user_number)
            puts "Your guess is too big.\n"
            user_number = guess_one_more_time()
        elsif is_too_small(number_from_the_machine, user_number)
            puts "Your guess is too small.\n"
            user_number = guess_one_more_time()
        end
    end
    puts "Your guess is correct!"
    puts "Would you like play again?"
    user_answer = gets.chomp
end

if user_answer == "n"
    puts "Fine. The program will close soon."  
else
    puts "I can't recognize your answer. Please run the script again."
end

puts "\n"