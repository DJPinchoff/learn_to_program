array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts array.join(', ')

def shuffle(array)
  shuffled = []
  l = array.length
  i = 0
  while i < l
    s = rand
    if s <= 0.5
      shuffled.push(array.pop)
    else
      shuffled.push(array.shift)
    end
    i += 1
  end 
  return shuffled
end

answer = shuffle(array)
puts answer.join(', ')