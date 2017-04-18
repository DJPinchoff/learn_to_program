class Integer
  def roman
    nums_of_nums = {"M"=> 0, 
                    "CM"=> 0, 
                    "D"=> 0, 
                    "CD"=> 0, 
                    "C"=> 0, 
                    "XC"=> 0, 
                    "L"=> 0,
                    "XL"=> 0,
                    "X"=> 0,
                    "IX"=> 0,
                    "V"=> 0,
                    "IV"=> 0,
                    "I"=> 0}
    
    #using modulus and divide, update hash values
    input = self
    nums_of_nums["M"] = input / 1000
    input = input % 1000
    nums_of_nums["CM"] = input / 900
    input = input % 900
    nums_of_nums["D"] = input / 500
    input = input % 500
    nums_of_nums["CD"] = input / 400
    input = input % 400
    nums_of_nums["C"] = input / 100
    input = input % 100
    nums_of_nums["XC"] = input / 90
    input = input % 90
    nums_of_nums["L"] = input / 50
    input = input % 50
    nums_of_nums["XL"] = input / 40
    input = input % 40
    nums_of_nums["X"] = input / 10
    input = input % 10
    nums_of_nums["IX"] = input / 9
    input = input % 9
    nums_of_nums["V"] = input / 5
    input = input % 5
    nums_of_nums["IV"] = input / 4
    input = input % 4
    nums_of_nums["I"] = input / 1
    
  puts "Here's your number converted to Roman Numerals:  "
    nums_of_nums.each { |key, value|
      value.times do |i|
        print key
      end
    }
    puts
    
  
  end
end
while true
  puts
  puts "Give me a number to convert to Roman Numerals up to 3000 or so. Enter 0 to exit."
  num = Integer(gets.chomp)
  if num == 0
    break
  else
    num.roman
  end
end



