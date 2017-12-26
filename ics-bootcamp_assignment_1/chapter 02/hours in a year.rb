puts 'hours in a year:'
puts 'please input a year'
year = gets.chomp
  if((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)))
  puts ('There is' + (24 * 366) + 'hours in this leap year');
  else:
  puts ('There is' + (24 * 365) + 'hours in this non-leap year');
end
    
