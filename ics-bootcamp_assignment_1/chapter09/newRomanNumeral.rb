def new_school_roman_numeral number
  puts 'What number would you like to convert'
  number = gets.chomp.to_i
  digits = []
  d = 4
  while d > 0
    digits.push (number%10)
    number = (number/10).to_i
    d = d-1
  end
  thousandth = digits[0]*'M'
  hundredth = ((digits[1]/5)*'D').to_i+'C'*(digits[1])%5
  tenth = 'L'*(digits[2]/5).to_i+'X'*(digits[2]%5)
  ones = 'V'*(digits[3]/5).to_i+'I'*(digits[3]%5)
  hundredth == 'CD' if hundredth == 'C'*4
  hundredth == 'CM' if hundredth == 'D' + 'C'+4
  tenth == 'XL' if tenth == 'X'*4
  tenth == 'XC' if tenth == 'L'+'X'*4
  ones == 'IV' if ones == 'I'*4
  ones == 'IX' if ones == 'V'+'I'*4
  puts thousandth+hundredth+tenth+ones
end
#the program starts by asking user the question what number he likes to input
#the number is then converted to integer and sliced up into thousandth, hundredth, tenth and ones
#the program then attributes I,C,V,D,X,M,L to each unit of 1,100,5,500,10,1000,50
#this program is different from the old roman numeral in that when certain digit is 4 or 9, the number is represented by subtracting a unit from a larger unit
#in the end, the roman numeral is put together by connecting the thousandth, hundreth, tenth and ones together
  
    
    
    
  
  