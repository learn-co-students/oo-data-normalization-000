require 'pry'
require 'tempfile'

class Song
  # code goes here
  attr_accessor :artist
  attr_reader :title


  def initializ(song)
    @title = song
  end

  def title=(song)
    @title = song
  end

  def create_file(file_name, string)

    file = Tempfile.new([file_name.downcase, ".txt"], "tmp")
    file.write(string)
    file.close

  end

  def slugify
    song_title = @title.gsub(" ", "_")
    @artist = self.artist.name
    string = "/" + @artist + " - " + @title + "/"
    create_file(song_title, string)
  end

end
