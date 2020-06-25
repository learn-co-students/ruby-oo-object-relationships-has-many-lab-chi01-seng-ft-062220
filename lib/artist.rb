#Artist
#  
#    has many songs (FAILED - 3)
#  #add_song
#    takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 4)
#  #add_song_by_name
#    takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
#  .song_count
#    is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)

class Artist
    attr_accessor :name, :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end   
    def self.all
        @@all
    end 
    def add_song(song)
        song.artist = self
    end   
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    def songs
        Song.all.select {|s| s.artist = self}
    end
    def self.song_count
        Song.all.count
    end
end