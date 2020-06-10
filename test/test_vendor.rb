require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'


class VendorTest < Minitest::Test

  def test_instance_of_vendor
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_vendor_holds_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end

  def test_check_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    assert_equal 0, vendor.check_stock(item1)
  end


end
