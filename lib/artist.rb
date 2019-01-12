require 'pry'

class Artist

  attr_accessor :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def make_song
    new_song = Song.new(name, self)
    self.songs << new_song
    new_song
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    self.songs << new_song
  end

  def self.song_count
    Song.all.length
  end

end
