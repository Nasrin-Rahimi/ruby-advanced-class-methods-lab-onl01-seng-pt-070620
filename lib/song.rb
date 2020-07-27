require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

song = Song.create
Song.all.include?(song)

s = Song.new 
s.name = "The Ship Song"
s.artist_name = "Nick Cave"
#binding.pry
s.save