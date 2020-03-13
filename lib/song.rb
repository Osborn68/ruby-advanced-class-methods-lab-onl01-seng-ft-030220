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
    song = self.create
    song.name = name
    song
  end
  
   def Song.find_by_name(name)
     @@all.each do |x|
       if x.name == name
     return x
   end
 end
   nil 
 end
   
   def self.find_or_create_by_name(name)
     if self.find_by_name(name)
       self.find_by_name(name)
     else
       self.create_by_name(name)
     end
  end
    
    def self.alphabetical
      @@all.sort_by{ |x| x.name }
    end
   
    def self.new_from_filename(name)
         song_array = name.split("-")
         song_array[1] = song_array[1].chomp(".mp3")
         song = self.new
         song.name = song_array[1]
         song.artist_name = song_array[0]
         song
         end 
      
    def self.create_from_filename(name)
      result = self.new_from_filename
      song = self.create
      song.name = result.name
      song.artist_name = result.artist_name
      song
    end
         
    def self.destroy_all
      @@all = []
 end
 end
 
     

  
 




