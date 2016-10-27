class Song

require 'tempfile'

attr_reader :title, :artist

  # code goes here
  def initialize

  end

  def title=(song)
    @title = song
  end

  def artist=(artist)
    @artist = artist
  end

  def serialize
    filename = @title.downcase.gsub(/\s/,"_")
    file = Tempfile.new([filename,'.txt'],'./tmp') 
    file.write("#{artist.name} - #{title}")
    file.close
  end


end
