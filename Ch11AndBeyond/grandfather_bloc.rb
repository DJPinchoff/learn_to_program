def bloc_times_hours(&some_bloc)
  hour = Time.new.hour
  hour -= 4 #Time Zone Difference from GMT to EST
  
  convert_hour = {-4=>8,
                  -3=>9,
                  -2=>10,
                  -1=>11,
                   0=>12}
                   
  if convert_hour.has_key? hour
    hour = convert_hour[hour]
  elsif hour > 12
    hour -= 12
  end
  
  hour.times { yield }
  2.times { puts }
  
end
puts
bloc_times_hours { print "DONG! " }