while true
  input = gets.chomp.to_s
  if input!= input.upcase
    puts 'HUH! SPEAK UP SONNY!'
  else
    if input!= 'BYE'
      year = 1930 + rand(20)
      puts 'NO, NOT SINCE'+year.to_s
    else
      puts 'OK BYE'
      break
    end
  end
end
#In this program, the input by the user is acquired using gets.chomp and converted to string
#if the input is not in all uppercase, 'HUH, SPEAK UP SONNY' will be outputted
#if the input is all upper case, 'NO, NOT SINCE ----' will be outputted where ---- represents a random year from 1930 to 1950
#this random year is acquired by adding a random number from 1 to 20 to 1930 
#if the input is 'BYE' string, then program will output 'OK BYE', terminating the if loop

  
  