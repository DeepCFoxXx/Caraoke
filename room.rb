class Room

  attr_reader :name, :songs, :guests

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests = []
  end

  def number_of_guests
    return @guests.length()
  end

  def number_of_songs
    return @songs.length()
  end

  def check_in_guest
    @guests.push(guest)
  end

end
