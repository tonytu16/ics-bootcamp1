def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'please answer yes or no'
    end
  end
end

ask('Do you like tacos?')
ask('Do you like flautas?')
ask('Do you like burritos?')
ask('Do you like horchata?')
puts 'Thank you'