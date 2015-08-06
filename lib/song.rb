class Song
	attr_accessor :title, :artist

	def artist=(artist)
		@artist = artist
	end

	def serialize
		file = Tempfile.new(["#{@title.downcase.gsub(' ','_')}", ".txt"], "tmp")
		file.write("#{@artist.name} - #{self.title}")
		file.close
	end
end

class Artist
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end


