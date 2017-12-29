puts 'please input your words below'
arr = []
while true
  word = gets.chomp.to_s
  if word != ''
    arr.push word
  else
    break
  end
end
puts arr.sort
#in the beginning, a while loops is created and the program will run if it is true
#if the word inputed by the user is not blank, it will be added to the array
#if the input is blank, the loop will be broken 
#the array will sort the words inputed and outputed