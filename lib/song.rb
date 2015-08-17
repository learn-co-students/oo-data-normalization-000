require 'tempfile'
require "pry"

class Song
  attr_accessor :title, :artist

  def initialize(*title)
    @title = title
  end

  def serialize
    song = title.sub(/\s/, "_")
    t=Tempfile.new("#{song.downcase}", "/Users/awinters/Labs/oo-data-normalization-000/tmp",)
    t << "#{artist.name} - #{title}"
    t.close
  end

end

# Honestly did this awhile ago, Learn changed it file names around and now I'm back here hoping that I did it the right now... seem to have everything here.
