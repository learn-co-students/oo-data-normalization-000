
class Song

  attr_accessor :title, :artist

  def slugify
    sanitize = self.title.gsub(" ", "_").downcase
    file = Tempfile.new(["#{sanitize}", ".txt"], "tmp")
    file.write("#{self.artist.name} - #{self.title}")
    file.close
  end
end
