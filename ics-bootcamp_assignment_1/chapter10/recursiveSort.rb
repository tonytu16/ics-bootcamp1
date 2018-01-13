def sort array_List
  sortt array_List, []
end

def sortt array_Inputed, array_Sorted
  if array_Sorted.length == 0 or array_Sorted.length==1
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