class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def Song.create
    song = self.new
    song.save
    song
  end
  
  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def Song.create_by_name(name)
    song = self.new
    
  end
  
   def Song.find_by_name(song_name)
     self.all.find{|song| song_name == name}
     
  
  
 

end
end
