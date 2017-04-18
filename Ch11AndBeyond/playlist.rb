program_names = Dir['/home/ubuntu/workspace/**/*.rb']


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

shuffled_program_names = shuffle(program_names)

file_string = ""

shuffled_program_names.each do |f|
  file_string = file_string + f + "\n"
end


File.open "./playlist_shuf.m3u", 'w' do |f|
  f.write file_string
end

