class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    Song.all.count
  end


end
