require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'


class ItemTest < Minitest::Test

  def test_instance_of_item
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    assert_instance_of Item, item1
  end

end
