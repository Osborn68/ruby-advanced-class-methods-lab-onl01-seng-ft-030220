class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def Song.create(song)
    song = self.new
    @@all << song
  end
  
  def Song.new_by_name(song_name)
    song_name = self.name
  end
  
  def Song.create_by_name(name)
    name = self.create_by_name
    @name = @@all
  end
  
   def Song.find_by_name(song_name)
     @@all.find{|song| song_name }
     
  
  



end
