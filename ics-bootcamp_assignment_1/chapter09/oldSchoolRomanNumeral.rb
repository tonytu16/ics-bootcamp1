def old_school_roman_numeral number
  puts 'What number would you like to convert'
  number = gets.chomp.to_i
  digits = []
  d = 4
  while d > 0
    digits.push (number%10)
    number = (number/10).to_i
    d -=1
  end
  thousandth = digits[0]*'M'
  hundredth = ((digits[1]/5)*'D').to_i+'C'*(digits[1])%5
  tenth = 'L'*(digits[2]/5).to_i+'X'*(digits[2]%5)
  ones = 'V'*(digits[3]/5).to_i+'I'*(digits[3]%5)
  puts thousandth+hundredth+tenth+ones
end

#the program starts by asking user the question what number he likes to input
#the number is then converted to integer and sliced up into thousandth, hundredth, tenth and ones
#the program then attributes I,C,V,D,X,M,L to each unit of 1,100,5,500,10,1000,50
#in the end, the roman numeral is put together by connecting the thousandth, hundreth, tenth and ones together