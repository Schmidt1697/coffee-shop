class Order < ActiveRecord::Base
    belongs_to :coffee
    belongs_to :customer

    #both return Customer instance and Coffee instance for this order already w/ belongs_to above
    # def customer_method
    #     self.customer
    # end

    # def coffee_method
    #     self.coffee
    # end

    def receipt
        name = self.customer[:name]
        coffee = self.coffee[:title]
        cost = self.price

        puts "#{name} ordered a #{coffee} for $#{cost}"
    end
end