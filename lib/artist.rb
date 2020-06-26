class Artist
    attr_accessor :name
    attr_writer :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs = Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song = song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end