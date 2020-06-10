require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'
require './lib/market'


class MarketTest < Minitest::Test

  def test_instance_of_market
    market = Market.new("South Pearl Street Farmers Market")
    assert_instance_of Market, market
  end

end