puts "Hi User! \nPlease provide you first name: "
first_name = gets.chomp
puts "And also please provide you last name: "
last_name = gets.chomp

nick = first_name[0,3].downcase + last_name[0,3].downcase
puts "Your nickname is: #{nick}\n\n"

bytes = nick.codepoints
puts "Your ASCI codes are: #{bytes}"
puts "\n"

bytes_as_strings = bytes.map(&:to_s)
puts "#{bytes_as_strings}\n"
puts "\n"

counter = 0
fact = 1
n = 100000
for i in 1..n+1
    # puts i 
    fact = fact * i
    for code in bytes_as_strings do
        str = fact.to_s
        if str.include?(code)
            counter += 1        
        else
            counter = 0
        end
    end
    if counter == bytes_as_strings.length()
        puts "Congratulations, you have founded your Strong Number which is #{i}!\n result for #{i}! is #{fact}"
        break
    end
end