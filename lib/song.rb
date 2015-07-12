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
