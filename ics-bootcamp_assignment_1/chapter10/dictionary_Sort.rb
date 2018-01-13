def dictionary_Sort array_List
  Sort array_List, []
end

def Sort Inputed_array, array_Sorted
  if Inputed_array.length==0 or Inputed_array.length==1
    puts array_Sorted
  else
    i = 0
    index = 0
    min = Inputed_array[i]
    while i<Inputed_array.length-1
      second = Inputed_array[i+1]
      if min>second
        second = min
        index = i + 1
      end
      i += 1
    end
    array_Sorted.push(min)
    Inputed_Array.delete_at(index)
    Sort Inputed_array, array_Sorted
  end
end
  