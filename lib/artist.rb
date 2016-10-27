class Artist
  # code goes here
  attr_accessor :song
  attr_reader :name

  def initialize(artist)
    @name = artist
  end

  def name=(artist)
    @name = artist
  end
end