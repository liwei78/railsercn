# delete permalink in post
# dump from wp export xml
# ruby lib/xml2jekyll.rb
post_path = File.join(ENV["PWD"], '_posts')
Dir.glob("#{post_path}/*.textile") do |filename|
  new_file = []
  IO.readlines(filename).each do |line|
    next if line.match(/^permalink: [\S]+/)
    new_file << line
  end
  new_file.each 
  File.open(filename, 'w+') do |f|
    new_file.each do |line|
      f.write line
    end
  end
end