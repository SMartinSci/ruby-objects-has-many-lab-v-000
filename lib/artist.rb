require 'pry'

class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
<<<<<<< HEAD
  def self.all
    @@all
=======
  def add_song(song)
    @songs << song
   song.artist = self
>>>>>>> 8249a8558d9f0f419a7b9ffa9ead4df6faa1faea
  end
  
  def add_song(song)
   song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
<<<<<<< HEAD
    Song.all.count
=======
    @songs.each do |song|
      @song_count[song] = @songs.count(song)
    end
    @song_count
>>>>>>> 8249a8558d9f0f419a7b9ffa9ead4df6faa1faea
  end
end