require 'tempfile'

class Song
  # code goes here
  attr_writer :title, :artist
  attr_accessor :title, :artist

  def initialize
    @title
    @artist
  end

  def serialize
    @title_format = @title.gsub(" ","_").downcase
    file = Tempfile.new([@title_format, '.txt'],'./tmp')
    string = @artist.name.to_s+" - "+@title.to_s
    file.write(string)
    file.close
  end

end
