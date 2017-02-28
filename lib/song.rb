require 'tempfile'

class Song
  attr_accessor :artist, :title

  def slugify 
    file_name = self.title.gsub(" ", "_").downcase
    file = Tempfile.new([file_name, ".txt"], "tmp")
    file.write("#{self.artist.name} - #{self.title}")
    file.close
  end
end
