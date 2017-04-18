program_names = Dir['/home/ubuntu/workspace/**/*.rb']


file_string = ""

program_names.each do |f|
  file_string = file_string + f + "\n"
end



File.open "./playlist_shuf.m3u", 'w' do |f|
  f.write file_string
end

