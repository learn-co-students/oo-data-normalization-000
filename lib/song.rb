require "pry"

class Song
  
  attr_accessor :title
  attr_writer :artist

  def artist
  	@artist
  end

  def serialize
  	sanitized_song = @title.downcase.split.join("_")
		File.open("tmp/#{sanitized_song}.txt", 'w') do |f|
			f.write("#{@artist.name} - #{@title}")
		end
	end

end


  	# file = Tempfile.open(sanitized_song, "/tmp")
  	# 	begin
  	# 		file.write("#{@artist.name} - #{@title})")
  	# 	ensure
  	# 	file.close
 	# open("#{sanitized_song}.txt", tmp) do |file|
 		# file.puts "#{@artist.name} - #{@title})"
		# end

