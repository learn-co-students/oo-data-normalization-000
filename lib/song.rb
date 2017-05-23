class Song
  	# code goes here
  	attr_accessor :artist, :title

  	def slugify
  	   file = Tempfile.new([@title.downcase.gsub(" ", "_"), ".txt"], "tmp")
    	file.write("#{@artist.name} - #{@title}")
   	file.read
		file.close 
	end


end
