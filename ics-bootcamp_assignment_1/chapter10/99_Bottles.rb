def english_number number
  if number < 0 or number == 0
    puts 'Please enter a Positive number'
  end
  num_string = '' 
  ones = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
  ten_to_twenty = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  greater_Numbers = [['hundred', 2],['thousand', 3],['million', 6],['billion', 9],['trillion', 12]]
  left = number
  while greater_Numbers.length > 0
    pair = greater_Numbers.pop
    name = pair[0]
    base = 10 ** pair[1]
    write = (left/base).to_i
    left = left - write*base
    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end
  write = (left/10).to_i
  left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + ten_to_twenty[left-1]
      left = 0
    else
      num_string = num_string + tens[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  if write > 0
    num_string = num_string + ones[write-1]
  end
  num_string
end


t = 9999
while t>1
  t_str = english_number(t)
  t_one_less_str = english_number(t-1)
  puts t_str+' bottles of beer on the wall, '+t_str+' bottles of beer.'
  puts 'Take one down and pass it around, '+t_one_less_str+' bottles of beer on the wall.'
  puts ''
  t=t-1
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'