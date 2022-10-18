require 'pry'
class Coffee < ActiveRecord::Base
    has_many :orders 
    has_many :customers, through: :orders

    # def coffee_orders
    #     self.orders
    # end

    # def coffee_customers
    #     self.customers
    # end

    def uniq_customer_names
        customer_names = self.customers.uniq.map { |customer| customer.name }
        customer_names.uniq
    end

    #class method
    def self.most_ordered
        order_list = self.all.map do |coffee|
            coffee.orders
        end
        order_list.map
        
    end

    #class method
    def self.most_expensive
        order_list = self.all.map do |coffee|
            coffee.orders
        end
       
    end

end