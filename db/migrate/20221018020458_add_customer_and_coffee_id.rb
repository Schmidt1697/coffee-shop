class AddCustomerAndCoffeeId < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :coffee_id, :integer
  end
end
