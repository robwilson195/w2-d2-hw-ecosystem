require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../fish' )
require_relative( '../river' )

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Steve")
    @fish3 = Fish.new("Sindy")
    fishes = [@fish1, @fish2, @fish3]

    @river1 = River.new("Amazon", fishes)
    @river2 = River.new("Nile", fishes)
  end

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end

  def test_river_has_fish
    assert_equal(3, @river1.fishes.length)
  end

  def test_lose_a_fish
    @river1.lose_a_fish(@fish1)
    assert_equal(2, @river1.fishes.length)
  end


end
