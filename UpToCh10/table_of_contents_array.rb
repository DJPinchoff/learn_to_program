line_width = 80

array = [['Getting Started', 1], 
        ['Numbers', 9],
        ['Letters', 13],
        ['Variables and Assignments', 19],
        ['Mixing it Up', 23],
        ['More About Methods', 30],
        ['Whatever You Want', 'num']]

puts "Table of Contents".center(line_width)
puts ""
i = 0
while i < array.length
  puts ("Chapter " + (i + 1).to_s + ":  " + array[i][0]).ljust(line_width/2) + ("Page " + array[i][1].to_s).rjust(line_width/2)
  i += 1
end
puts ""
  
  
