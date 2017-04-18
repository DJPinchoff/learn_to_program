def num_to_month(int)
  case int
    when 1
      return "January"
    when 2
      return "February"
    when 3
      return "March"
    when 4
      return "April"
    when 5
      return "May"
    when 6
      return "June"
    when 7
      return "July"
    when 8
      return "August"
    when 9
      return "September"
    when 10
      return "October"
    when 11
      return "November"
    when 12
      return "December"
  end
end

read_string = File.read "birthday_list.txt"
names_dates_hash = Hash.new

#Put each line of read_string into the Hash with name: date.. with date converted to Time class.
read_string.each_line do |e|
  name, date, year = e.split','
  month, day = date.split(' ')
  time = Time.new(year, month, day)
  
  names_dates_hash[name] = time
end

#Get name of person. Say when their birthday is.  Then say how old they are... 

while true
  puts
  puts "You're options for names are:"
  puts names_dates_hash.keys
  puts
  puts "Whose birthday information do you want? (Or type 'Exit' to stop.)"
  name = gets.chomp
  if name.downcase == "exit" || name == ""
    puts "Goodbye!"
    break
  end
  if names_dates_hash.has_key? name
    
    time = names_dates_hash[name]
    puts num_to_month(time.month) + " " + time.day.to_s + " is #{name}'s birthday."
    today = Time.now
  
    if today.month > time.month
     puts "#{name} is currently #{today.year - time.year} years old."
    elsif today.month < time.month
      puts "#{name} is currently #{today.year - time.year - 1} years old."
    else
      if today.day == time.day 
        puts "Today is #{name}'s birthday! #{name} is #{today.year - time.year} years old today."
      elsif today.day > time.day
        puts "#{name}'s birthday was this month! #{name} is currently #{today.year - time.year} years old."
      else
        puts "#{name}'s birthday is coming up pretty soon! #{name} is currently #{today.year - time.year - 1} years old, but not for long."
      end
    end
   
  else
    puts "That name doesn't exist in the database. (It's case-sensitive, you know.) Try again!"
  end
  puts "Hit ENTER to continue."
  gets
end





