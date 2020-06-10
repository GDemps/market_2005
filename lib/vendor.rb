class Vendor

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
    @inventory
  end

  def potential_revenue
    @inventory.map do |item|
      item[0].price.gsub("$", "").to_f * item[1]
    end.sum
  end

end
