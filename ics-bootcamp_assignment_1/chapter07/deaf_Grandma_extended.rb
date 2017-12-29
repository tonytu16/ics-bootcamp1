bye_Times=0
while true
  input = gets.chomp.to_s
  if (input!=input.upcase)&&(input!='Bye')
    puts 'HUH? SPEAK UP SONNY!'
  elsif(input==input.upcase)&&(input!='Bye')
    year = 1930 + rand(20)
    puts 'No. Not since' + year.to_s + '!'
  elsif(input=='Bye')
    bye_Times+=1
    if (bye_Times>=3)
      puts 'Ok Bye Bye'
      break
    end
  end
end
#At first, integer bye_Times is defined as zero, which will be used later in an if loop
#a while loop is created at the beginning, and while it is true, the loop will be run
#if the user input is not all upper case and is not 'Bye', the program will return 'HUH SPEAK UP SONNY?'
#In another case, if the user input is all uppercase while it is not 'Bye', the program will return 'No! not since + random year + !, where the random year is generated using the same method as illustrated in deaf_Grandma.rb
#In the last case, if the user input is 'Bye', the integer bye_Times will increase by 1 until it reaches greater or equal to three, the program returns 'OK Bye Bye'

   