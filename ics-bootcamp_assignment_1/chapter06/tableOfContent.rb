line_width = 40
str = 'Table of Contents'
puts (str.center(line_width))
str1 = 'Chapter 1:  Getting Started                Page 1'
puts (str1.ljust(line_width))
str2 = 'Chapter 2:  Numbers                        Page 9'
puts (str2.center(line_width))
str3 = 'Chapter 3:  Letters                        Page 13'
puts (str3.ljust(line_width))
#The title and chapter 2 are printed using center adjustment
#Chapter 01 and chapter 03 are printed using left adjustment           