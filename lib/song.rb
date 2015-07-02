require 'tempfile'
require 'pry'
class Song
  # code goes here
  attr_accessor :title, :artist
  def serialize
    filename = @title.downcase.gsub(/\s/,'_')
	file = Tempfile.new([filename, '.txt'])
	binding.pry
	file.write("#{@artist.name} - #{@title}")
	binding.pry
	file.close
  end
end
