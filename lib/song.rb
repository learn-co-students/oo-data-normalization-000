require 'tempfile'
class Song
  # code goes here
  attr_accessor :title, :artist
  def initialize
    @title = title
    @artist = artist
  end

  def slugify
    file_name = self.title.downcase
    file_name = file_name.gsub(" ", "_")
    to_file = "#{self.artist.name} - #{self.title}"

    file = Tempfile.new(["#{file_name}", ".txt"], "tmp")
    file.write("#{to_file}")
    file.close
  end
end
