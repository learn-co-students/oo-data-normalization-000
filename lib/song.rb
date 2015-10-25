require 'pry'

class Song

  attr_accessor :artist, :title


  def slugify
    song = Tempfile.new(["#{self.title.downcase.gsub(" ","_")}", ".txt"],"tmp")
    song.write("#{self.artist.name} - #{self.title}")
    song.close
  end

end