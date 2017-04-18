def sort(arr)
  rec_sort(arr, [])
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
# So if we got here, then it means we still
# have work to do.
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end
# Now "smallest" really does point to the
# smallest element that "unsorted" contained,
# and all the rest of it is in "still_unsorted".
sorted.push(smallest)
rec_sort(still_unsorted, sorted)
end

array = []
while true
  puts "Type one word or ENTER to exit."
  input = gets.chomp
  if input == ""
    puts "Here's your final list in alphabetical order:"
    array = sort(array)
    puts array.join(', ')
    break
  else
  array.push(input) unless array.include?(input)  
  end
end