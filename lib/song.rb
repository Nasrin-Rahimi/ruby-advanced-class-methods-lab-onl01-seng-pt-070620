require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

s = Song.new 
s.name = "The Ship Song"
s.artist_name = "Nick Cave"
#binding.pry
s.save