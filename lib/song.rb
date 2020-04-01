class Song
  
@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre 

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << @genre
  @@artists << @artist
end

def self.count
  @@count
end

def self.genres 
  @@genres.uniq
end

def self.artists
  @@artists.uniq 
end

def self.genre_count
  @@genres.each do |type|
    
    if frequencies[type] +=1
      #@@genres.has_key?(type)
      #@@genres[type] += 1
    else
      @@genres = []
      @@genres << type
      end
    end
  end
end