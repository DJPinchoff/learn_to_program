class OrangeTree

  def initialize
    @height = 2
    @age = 0
    @orange_count = 0
  end

  def height?
    puts
    puts "Its height is " + @height.to_s + " feet."
  end
  
  def one_year_passes
    @age += 1
    @height += (@height * 0.3)
    @height = @height.round(1)
    if @age > 12
      puts
      puts "Oh, no! The tree was too old and died."
      puts "Good luck next time!"
      puts
      exit
    elsif @age > 10
      @orange_count = 4
    elsif @age > 7
      @orange_count = 3
    elsif @age > 4
      @orange_count = 2
    elsif @age > 2
      @orange_count = 1
    end
    puts
    if @age == 1
      puts "One year passes... It's 1 year old now."
    else
      puts "One year passes... It's #{@age.to_s} years old now."
    end
  end
  
  def count_the_oranges
    puts
    if @orange_count == 0
      puts "There are no oranges on the tree." 
      puts "It's too young or you've eaten them all!"
    elsif @orange_count == 1
      puts "There's 1 orange on the tree."
    else
      puts "There are " + @orange_count.to_s + " oranges on the tree."
    end
  end
  
  def pick_an_orange
    @orange_count -= 1
    if @orange_count < 0
      puts
      puts "Did you check to see how many oranges were on the tree?" 
      puts "There's none left to eat right now!"
      @orange_count = 0
    else
      puts
      puts "Mmmm... that was delicious!"
    end
  end
end
tree = OrangeTree.new
puts
puts "Welcome - we just planted an Orange Tree for you!"
while true
  puts
  puts "What would you like to do next?"
  puts "1) Check its height."
  puts "2) Check how many oranges are on the tree."
  puts "3) Pick an orange to eat!"
  puts "4) Skip ahead by one year."
  puts "5) Chop down the tree and run!"
  print ">>> "
  input = gets.chomp
  input = input.to_i
  case input
    when 1
      tree.height?
    when 2
      tree.count_the_oranges
    when 3
      tree.pick_an_orange
    when 4
      tree.one_year_passes
    when 5
      puts
      puts "You better run!!!"
      exit
      
  end
end      

