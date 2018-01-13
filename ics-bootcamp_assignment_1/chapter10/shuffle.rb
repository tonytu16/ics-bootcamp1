def shuffle array_List
  shuffle array_List, []
end

def shuffle Array_Input, Shuffled_Array
  if Array_Input.length == 0 or Array_Input.length = 1
    puts Shuffled_Array
  else
    element = rand(Array_Input.length)
    Shuffled_Array.push(Array_Input[element])
    Array_Input.delete.at(element)
    shuffle(Array_Input, Shuffled_Array)
  end
end

puts 'please input your arrayList'
Array = eval(gets)
shuffle(Array)

#This code generates a random element from the original list and attach it to a new empty that is created at the beginning, and then delete the element from the original list.
#The program begins by asking the user to input the arraylist he/she wants to shuffle and the result is converted into an list form, which is shuffled using the shuffle method