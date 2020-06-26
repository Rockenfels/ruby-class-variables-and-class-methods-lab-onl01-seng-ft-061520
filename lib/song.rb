require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def count
    @@count
    binding.pry
  end
  
  def genres
    ans = []
    @@genres.each do |genre|
      ans << genre if !ans.include?(genre)
    end
    ans
  end
  
  def artists
    ans = []
    @@artists.each do |artist|
      ans << artist if !ans.include?(artist)
    end
    ans
  end
  
  def genre_count
    ans = {}
    ans = @@genres.each do |genre|
      if ans[genre] == nil
        ans[genre] = 1
      else
        ans[genre] += 1
      end    
    end
    ans
  end
  
  def artist_count
    ans = {}
    ans = @@artists.each do |artist|
      if ans[artist] == nil
        ans[artist] = 1
      else
        ans[artist] += 1
      end    
    end
    ans
  end
  
end