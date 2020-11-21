require 'pry'

class Song

    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        self.class.artists << self.artist
        self.class.genres << self.genre
        
    end

    def self.artists
        @@artists
        # binding.pry
    end

    def self.genres
        @@genres
    end

    def self.count
        @@count
    end

    def self.genre_count

    end

    def self.artist_count

    end
end