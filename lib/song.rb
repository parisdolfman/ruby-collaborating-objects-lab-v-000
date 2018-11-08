class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end


def self.new_by_filename(filename)
 song_details = filename.chomp(".mp3").split(" - ")
 song = Song.new(song_details[1])
 song.artist = song_details[0]
 song
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

end
