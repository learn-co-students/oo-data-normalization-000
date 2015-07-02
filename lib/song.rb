require 'tempfile'
class Song
  # code goes here
  attr_accessor :title, :artist
  def serialize
    filename = @title.downcase.gsub(/\s/,'_')
	file = Tempfile.new(filename, '.txt')
	file.write("#{@artist.name} - #{@title}")
	file.close
  end
end
