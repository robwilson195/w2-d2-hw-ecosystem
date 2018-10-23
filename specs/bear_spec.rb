require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../bear' )
require_relative( '../fish' )
require_relative( '../river' )

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")
    @bear2 = Bear.new("Paddington", "Spectacled")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("Spectacled", @bear2.type)
  end

end
