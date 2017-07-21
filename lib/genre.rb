class Genre
  # @@all_genres = []

  attr_accessor :songs
  attr_reader :name, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
