class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genre = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artists
    @@genre << genre
    
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def count
    @@count
  end
  
  def genres
    @@genres
  end
end