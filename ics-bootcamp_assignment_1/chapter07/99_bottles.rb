t = 98
while t>0
  99BOB_str = t.to_s
  98BOB_str = (t-1).to_s
  puts 99BOB_str+'bottles of beer on the wall,' + 99BOB_str + 'bottles of beer'
  puts 'Take one down and pass it around,' + 98BOB_str + 'bottles of beer on the wall'
  puts ' '
  t-=1
end
puts 'No more bottles of beer on the wall, no more bottles of beer'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall'
#99BOB is the first line of the repeating pattern while 98 BOB is the secon line of the repeating lattern
#by using a while loop, the repeating will be terminated when t reduces to 1
#while t is reduced by 1 each time the while loop is run, 99BOB and 98BOB will be printed 99 times 
#After t reaches 1, the while loop is terminated, and the last line will be printed