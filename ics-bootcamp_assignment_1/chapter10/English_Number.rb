def english_number number
  if number < 0 
    return 'Error. Program only processes non-negative numbers'
  elsif number == 0
    return 'zero'
  num_string = '' 
  oneth = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
  tenth = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
  hundredth = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  greater_Numbers = [['hundred', 2],['thousand', 3],['million', 6],['billion', 9],['trillion', 12]]
  left = number
  while greater_Numbers.length > 0
    pair = greater_Numbers.pop
    name = pair[0]
    base = 10 * pair[1]
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
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
puts english_number(68)
puts english_number(100)
puts english_number(395860)
puts english_number(3056049)