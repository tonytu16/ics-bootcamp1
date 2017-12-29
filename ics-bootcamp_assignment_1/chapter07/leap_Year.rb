while true
  puts 'What is your starting year?'
  starting_Year = gets.chomp.to_i
  puts 'What is your ending year?'
  ending_Year = gets.chomp.to_i
  if starting_Year > ending_Year
    puts 'ening year must be bigger than starting year'
  elsif starting_Year <= ending_Year
    while (starting_Year <= ending_Year)
      if((starting_Year % 400 == 0) || ((starting_Year % 4 == 0) && (starting_Year % 100 != 0)))
        puts starting_Year
      end
      starting_Year = starting_Year+1
    end
    break
  end
end
#First, we create a while loop. When true, it always runs through the rest of the loop
#the user then input the starting year and the ending year.
#if the starting year is greater than the ending year, there exists an error and program ends with the output 'ending year must be bigger than starting year'
#if the starting year is equal or less than the ending year, the program goes through a while loop
#In this while loop, the year will be printed if it is divisible by 400 and or if the year is divisible by 4 but not divisible by 100
#by typing starting_Year = starting_Year + 1, each year in between the starting year and the ending year that agrees to these requirement will be printed
