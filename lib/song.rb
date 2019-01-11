
class Song

  attr_accessor :name, :songs
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist_object)
    @artist = artist_object
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end


end
