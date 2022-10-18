class Customer < ActiveRecord::Base
    has_many :orders
    has_many :coffees, through: :orders

    # def customer_orders
    #     self.orders
    # end

    # def customer_coffees
    #     self.coffees
    # end

    def self.customer_names
        self.all.map do |cust|
            puts cust.name
            cust.name
        end
    end

    def order_coffee(coffee_title, price)
        new_coffee = Coffee.create(title: coffee_title)
        new_order = Order.create(price: price, customer_id: self.id, coffee_id: new_coffee.id)
        puts "order receipt: #{new_coffee.title} $#{new_order.price}"
    end

    def total_purchase_amount
        total_prices = self.orders.map do |order|
            order.price
        end
        total_prices.sum
    end

    def dislike_coffee(coffee_title)
        #returns instance of coffee
        coffee = self.coffees.find_by(title: coffee_title)
        #get id from coffee_title order
        cof_id = self.coffees.find_by(id: coffee.id).id

        #instance of order associated w/ provided coffee_title
        order = self.orders.find_by(coffee_id: cof_id)
        order_price = self.orders.find_by(coffee_id: cof_id).price
        puts "customer #{self.name} has been refunded $#{order_price}"

        #delete order and coffee associated with this disliked coffee_title 
        order.destroy
        coffee.destroy
    end

end

