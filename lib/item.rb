require 'time'
require 'pry'

class Item
attr_reader :id, :name, :description, :unit_price, :created_at, :updated_at, :merchant_id
  def initialize(item_data, parent)
    @id = item_data["id"].to_i
    @name = item_data["name"]
    @description = item_data["description"]
    @unit_price = BigDecimal.new(item_data["unit_price"]) / 100
    @created_at = Time.parse(item_data["created_at"])
    @updated_at = Time.parse(item_data["updated_at"])
    @merchant_id = item_data["merchant_id"].to_i
    @parent = parent
  end

  def unit_price_to_dollars
    @unit_price.to_f
  end

  def merchant
    @parent.parent.merchants.merchant_list.find do |merchant|
      @merchant_id == merchant.id
    end
  end

end
