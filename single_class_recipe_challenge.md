# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class CreatePlaylist
  def initialize(name) # name is a string
    # creates variable for @name(string)
    # creates variable for @playlist(array)
  end

  def add_track(track) # track is a string
    # Adds track to playlist
    # No return value
  end

  def show_playlist()
    # Throws an exception if no tracks have been added
    # Otherwise, returns a string showing all the tracks added to the playlist
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 adds one track to playlist
playlist = CreatePlaylist.new("Raphaella")
playlist.add_track("As It Was - Harry Styles")
playlist.show_playlist() # => "Raphaella's Playlist: As It Was - Harry Styles"

# 2 fails if no tracks in playlist
playlist = CreatePlaylist.new("Raphaella")
playlist.show_playlist() # fails with 'No songs added to playlist.'

# 3 adds multiple tracks to playlist
playlist = CreatePlaylist.new("Raphaella")
playlist.add_track("As It Was - Harry Styles")
playlist.add_track("Go - Cat Burns")
playlist.show_playlist() # => "Raphaella's Playlist: As It Was - Harry Styles, Go - Cat Burns"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

