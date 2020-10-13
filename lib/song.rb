#The Song class can produce individual songs. Each song has a name, an artist and a genre. 
require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        #binding.pry
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        return_hash = {}
        unique_genres = @@genres.uniq
        unique_genres.each do |genre|
            occurances_of_genre = @@genres.count(genre)
            return_hash[genre]=occurances_of_genre
        end
        return_hash
    end

    def self.artist_count
        return_hash = {}
        unique_artists = @@artists.uniq
        unique_artists.each do |artist|
            occurances_of_artist = @@artists.count(artist)
            return_hash[artist]=occurances_of_artist
        end
        return_hash
    end

end
