puts "Hi User! \nPlease provide you first name: "
 first_name = gets.chomp
 puts "And also please provide you last name: "
 last_name = gets.chomp

 nick = first_name[0,3].downcase + last_name[0,3].downcase
 puts "Your nickname is: #{nick}\n\n"

 bytes = nick.codepoints
 puts "Your ASCI codes are: #{bytes}"
 puts "\n"

 for code in bytes do
    puts "Factorial for number #{code}:"
    fact = 1
    for n in 1..code+1 do
        fact = fact * n
        # puts "Factorial function called for number #{n} || result: #{fact}"
    end
    puts "   #{fact}"
    puts "\n\n"
 end


