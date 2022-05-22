class CreatePlaylist

def initialize(name)
  @playlist = []
  @name = name
end

def add_track(track)
  @playlist.push(track)
end

def show_playlist
  fail "No songs added to playlist." if @playlist.count == 0
  formatted_playlist = ""
  @playlist.each_with_index do |song,i| 
    if i == (@playlist.count - 1)
      formatted_playlist += "#{song}" 
    else
      formatted_playlist += "#{song}, " 
    end
  end
  return "#{@name}'s Playlist: #{formatted_playlist}"
end


end