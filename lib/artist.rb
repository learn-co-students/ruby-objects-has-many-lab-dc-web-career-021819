class Artist
  attr_accessor :name, :songs
  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@all_songs << song
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song  = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@all_songs.length
  end
end
