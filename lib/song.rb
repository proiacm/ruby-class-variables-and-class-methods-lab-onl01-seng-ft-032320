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
  genres_hash = {}
  @@genres.each do |type|
    if type == type
      genres_hash[type] += 1
    else
      #@@genres = []
      #@@genres << type
      #end
     # @@genres.to_h
    end
    genres_hash
  end
end