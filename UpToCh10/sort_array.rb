array = []
while true
  puts "Type one word or ENTER to exit."
  input = gets.chomp
  if input == ""
    puts "Here's your final list in alphabetical order:"
    puts array.join(', ')
    break
  else
  array.push(input.downcase) unless array.include?(input.downcase)  
  array = array.sort
  end
end