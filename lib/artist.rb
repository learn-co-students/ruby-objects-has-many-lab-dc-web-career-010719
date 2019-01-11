require 'pry'

class Artist

  attr_accessor :name, :songs, :artists

  @@all_artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def add_song(song_name)
    song_name.artist=(self)
    self.songs << song_name
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist=(self)
    self.songs << song
  end

  def self.song_count     #come back to see what they want here
    Song.all.count
  end


end
