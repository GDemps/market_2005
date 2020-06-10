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
    hash = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.keys.each do |key|
        hash[key] = { quantity: 0, vendors: [] }
      end
    @vendors.each do |vendor|
      vendor.inventory.keys.each do |key|
        hash[key][:quantity] += vendor.inventory.values.sum
        if hash[key][:vendors].nil? == false
        hash[key][:vendors] << vendor
        else
        end
      end
    end
  end
  hash
  end

end
