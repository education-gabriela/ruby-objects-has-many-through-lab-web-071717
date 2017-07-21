class Artist
  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
