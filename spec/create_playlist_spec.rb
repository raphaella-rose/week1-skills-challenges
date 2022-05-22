require 'create_playlist'

RSpec.describe CreatePlaylist do
  it "adds one track to the playlist" do
    playlist = CreatePlaylist.new("Raphaella")
    playlist.add_track("As It Was - Harry Styles")
    expect(playlist.show_playlist()).to eq "Raphaella's Playlist: As It Was - Harry Styles"
  end

  context "if no tracks are in playlist" do
    it "fails" do
      playlist = CreatePlaylist.new("Raphaella")
      expect { playlist.show_playlist() }.to raise_error "No songs added to playlist."
    end
  end

  it "adds multiple tracks to the playlist" do
    playlist = CreatePlaylist.new("Raphaella")
    playlist.add_track("As It Was - Harry Styles")
    playlist.add_track("Go - Cat Burns")
    expect(playlist.show_playlist()).to eq "Raphaella's Playlist: As It Was - Harry Styles, Go - Cat Burns"
  end

  it "shows personailsed playlist with user name" do
    playlist = CreatePlaylist.new("Ben")
    playlist.add_track("Go - Cat Burns")
    expect(playlist.show_playlist()).to eq "Ben's Playlist: Go - Cat Burns"
  end

end