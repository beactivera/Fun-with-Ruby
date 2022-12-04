def random_number_generator()
   return rand(1..100) 
end

def is_number_the_same(machine_number, user_number)
    if machine_number == user_number
        puts "Your number is correct!"
    elsif
        puts "Your number is incorrect:("
    end
end


puts "Hi User! \nWelcome in Guessing Game! \nThe Game Machine is randomizing the number in range 1-100\n
       Would you like to quess the number?(y/n)\n"

user_answer = gets.chomp

if user_answer == "y"
    puts "\nSo let's play the game.Good luck!\n\n"
    number_from_the_machine = random_number_generator()
    puts "#{number_from_the_machine} \n"
    puts "The machine drew a number.\n\n What number is it?\n"
    guessed_number = gets.chomp
    is_number_the_same(number_from_the_machine, guessed_number.to_i)

elsif user_answer == "n"
    puts "Fine. The program will close soon."  
else
    puts "I can't recognize your answer. Please run the script again."
end

puts "\n"


