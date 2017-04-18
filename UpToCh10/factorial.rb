class Integer
  def factorial
    i = 1
    answer = 1
    while i < self
      answer = answer * (i + 1)
      i +=1
    end
    puts answer
  end
end
while true
  puts
  puts "Give me a number, I'll give you its factorial!"
  print ">>>"
  input = gets.chomp
  if input == ""
    break
  else
    input.to_i.factorial
  end
end