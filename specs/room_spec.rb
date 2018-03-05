require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < Minitest::Test

  def setup
    @song1 = Song.new("ZZ Top", "Sleeping Bag")
    @song2 = Song.new("Ozzy", "Bark at the moon")
    @song3 = Song.new("Thunder", "Love walked in")
    @song4 = Song.new("Boston", "More than a feeling")
    @songs1 = [@song1, @song2, @song3]
    @room = Room.new("Room 808", @songs1)
    @guest1 = Guest.new("Han")
    @guest2 = Guest.new("Liea")
    @guest3 = Guest.new("Chewie")
    @guests = [@guest1, @guest2]
  end

  def test_room_name
    assert_equal("Room 808", @room.name())
  end

  def test_room_songs
    assert_equal(3, @room.number_of_songs())
  end

  def test_check_in_guests
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.number_of_guests())
  end

  def test_check_in_many_guests
    @room.check_in_many_guests(@guests)
    assert_equal(2, @room.number_of_guests())
  end



end
