def convert_to_roman_numeral(input)
  
  i = 0
  v = 0
  x = 0
  l = 0
  c = 0
  d = 0
  m = 0
  
  m = input / 1000
  input = input % 1000
  d = input / 500
  input = input % 500
  c = input / 100
  input = input % 100
  l = input / 50
  input = input % 50
  x = input / 10
  input = input % 10
  v = input / 5
  input = input % 5
  i = input / 1
  input = input % 1
  
  puts "The number in old school Roman Numberals is:"
  m.times { print "M" }
  d.times { print "D" }
  c.times { print "C" }
  l.times { print "L" }
  x.times { print "X" }
  v.times { print "V" }
  i.times { print "I" }
  puts
end

while true
  puts "Give me a number to convert to Roman Numerals that are only added. Enter 0 to exit."
  input = Integer(gets.chomp)
  if input == 0
    break
  else
    convert_to_roman_numeral(input)
  end
end



