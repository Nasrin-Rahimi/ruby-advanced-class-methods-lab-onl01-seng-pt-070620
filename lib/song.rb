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
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    self.all << song
    song
  end

end

song = Song.create_by_name("The Middle")
song

Song.all.include?(song)
#=> true

song = Song.new_by_name("The Middle")
song.name

song = Song.create
Song.all.include?(song)

s = Song.new 
s.name = "The Ship Song"
s.artist_name = "Nick Cave"
#binding.pry
s.save