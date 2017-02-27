require 'time'

class Customer
  attr_reader :id, :first_name, :last_name, :created_at, :updated_at
    def initialize(customer_data, parent)
      @id = customer_data["id"].to_i
      @first_name = customer_data["first_name"]
      @last_name = customer_data["last_name"]
      @created_at = Time.parse(customer_data["created_at"])
      @updated_at = Time.parse(customer_data["updated_at"])
      @parent = parent
    end

end
