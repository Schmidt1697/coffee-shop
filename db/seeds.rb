Order.destroy_all
Coffee.destroy_all
Customer.destroy_all

black = Coffee.create(title: 'black')
latte = Coffee.create(title: 'latte')
mocha = Coffee.create(title: 'mocha')

c1 = Customer.create(name: 'Anna')
c2 = Customer.create(name: 'Mike')
c3 = Customer.create(name: 'Huxley')

order1 = Order.create(price: 2, customer_id: c2.id, coffee_id: black.id)
order2 = Order.create(price: 4, customer_id: c1.id, coffee_id: latte.id)
order3 = Order.create(price: 6, customer_id: c1.id, coffee_id: mocha.id)
order3 = Order.create(price: 6, customer_id: c2.id, coffee_id: mocha.id)
order3 = Order.create(price: 6, customer_id: c3.id, coffee_id: mocha.id)

