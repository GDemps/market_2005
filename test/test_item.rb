require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'


class ItemTest < Minitest::Test

  def test_instance_of_item
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    assert_instance_of Item, item1
  end

  def test_attributes_of_item
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    assert_equal 'Peach', item1.name
    assert_equal '$0.50', item2.price
  end

end
