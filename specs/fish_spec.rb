require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../fish' )

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Mark")
    @fish2 = Fish.new("Xedru")
  end

  def test_fish_has_name
    assert_equal("Xedru", @fish2.name)
  end

end
