require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < Minitest::Test

  def setup
    @song = Song.new("Yes", "Roundabout")
  end

  def test_song_artist
    assert_equal("Yes", @song.artist())
  end

end
