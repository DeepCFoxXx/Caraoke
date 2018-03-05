require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("Luke")
  end

  def test_guest_name
    assert_equal("Luke", @guest.name())
  end

end
