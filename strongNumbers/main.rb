puts "Hi User! \nPlease provide you first name: \n"
 first_name = gets.chomp
 puts "And also please provide you last name: \n"
 last_name = gets.chomp

 nick = first_name[0,3].downcase + last_name[0,3].downcase
 puts "Your nickname is: #{nick}\n\n"

 bytes = nick.codepoints
 puts "Your ASCI codes are: #{bytes}"
 puts "\n"