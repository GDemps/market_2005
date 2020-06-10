class Market

  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    selling_vend = @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
    selling_vend
  end

  def total_inventory
      vendors.reduce(Hash.new { |market_inventory, item| market_inventory[item] = {quantity: 0, vendors: []} }) do |acc, vendor|
        vendor.inventory.each do |vendor_item, quantity|
          acc[vendor_item][:quantity] += quantity
          acc[vendor_item][:vendors] << vendor
        end
        acc
      end
  end

  def sorted_item_list
    @vendors.each do |vendor|
      list = vendor.inventory.sort_by do |item|
        item[0].name[0]
      end
      final= list.map do |item|
        item.name
      end
      final
    end
  end

end
