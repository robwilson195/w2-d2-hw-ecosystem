require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../bear' )
require_relative( '../fish' )
require_relative( '../river' )

class TestBear < MiniTest::Test

  def setup

    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Steve")
    @fish3 = Fish.new("Sindy")
    fishes = [@fish1, @fish2, @fish3]

    @river1 = River.new("Amazon", fishes)
    @river2 = River.new("Nile", fishes)

    @bear1 = Bear.new("Yogi", "Grizzly")
    @bear2 = Bear.new("Paddington", "Spectacled")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("Spectacled", @bear2.type)
  end

  def test_bear_has_stomach
    assert_equal(0, @bear1.stomach.length)
  end

  def test_bear_can_eat_fish_from_river
    @bear2.eat_fish(@fish2, @river2)
    assert_equal(1, @bear2.stomach.length)
    assert_equal(2, @river2.fishes.length)
  end


end
