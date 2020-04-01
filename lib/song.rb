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
  genre_count_hash = {}

  @@genres.each do |type|
    if genre_count_hash[type]
      genre_count_hash[type] += 1
    else
      genre_count_hash[type] = 1
      end
    end
    genre_count_hash
  end
  
  def self.artist_count
    artist_count_hash = {}
    
    @@artists.each do |name|
      if artist_count_hash[name]
        artist_count_hash[name] += 1 
      else
        artist_count_hash[name] = 1
      end
    end
    artist_count_hash
  end
end