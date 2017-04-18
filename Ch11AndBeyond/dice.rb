class Die
  def roll
    1 + rand(6)
  end
end

while true
  die1 = Die.new
  die2 = Die.new
  num1 = die1.roll 
  num2 = die2.roll
  total = num1 + num2
  puts
  puts "First Die: " + num1.to_s
  puts "Second Die: " + num2.to_s
  puts "Total of Dice: " + total.to_s
  print "Roll again? (Type 'Y' to continue.) >>> "
  input = gets.chomp
  if input.downcase != 'y'
    break
  end
end

