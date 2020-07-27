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
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if !(self.find_by_name(name))
      self.create_by_name(name)
    end
    self.find_by_name(name)
  end
  
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end
  
  def self.new_from_filename(file)
    data = file.split(" - ")
    artist = data[0]
    name = data[1].delete_suffix(".mp3")
    song = self.new
    song.artist_name = artist
    song.name = name
  end

end

song = Song.new_from_filename("Taylor Swift - Blank Space.mp3")
 binding.pry

song_1 = Song.find_or_create_by_name("Blank Space")
song_2 = Song.find_or_create_by_name("Alank Space")
Song.alphabetical


the_middle = Song.create_by_name("The Middle")
#binding.pry
Song.find_by_name("The Middle")

song = Song.create_by_name("The Middle")
#binding.pry
Song.all.include?(song)


song = Song.new_by_name("The Middle")
song.name

song = Song.create
Song.all.include?(song)

s = Song.new 
s.name = "The Ship Song"
s.artist_name = "Nick Cave"
#binding.pry
s.save