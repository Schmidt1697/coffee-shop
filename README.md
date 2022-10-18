# Instructions

- run `bundle install`
- build out the models and migrations
- create some seeds
- build out the methods under the challenges section
- run `rake console` and test your code

# Getting Started

- We have three models: `Customer`, `Order`, and `Coffee`.

- A `Customer` has many `Order`s, a `Coffee` has many `Order`s, and an `Order` belongs to a `Coffee` and to a `Customer`.
- `Customer` - `Coffee` is a many to many relationship.

X a Customer should have a name
X a Coffee should have a title
X an Order should have a price
- Which is the single source of truth? (aka which table will have the columns for the foreign keys)
##Order table should have foreign keys

# Challenges

## Order

- Order#customer

  <!-- - return the Customer instance for this order -->

- Order#coffee

  <!-- - return the Coffee instance for this order -->

- Order#receipt

  <!-- - instance method. `puts` a message formatted like: `{customer name} ordered a {coffee title} for ${price}` -->

## Customer

- Customer#orders
  <!-- - returns a collection of all Order instances for this customer -->

- Customer#coffees

  <!-- - returns a collection of all Coffee instances for this customer -->

- Customer.names

  <!-- - class method that returns a collection with all of the customer names -->

- Customer#order_coffee(coffee_title, price)

  <!-- - instance method that takes in a coffee title and price and will create an order with that coffee and price
  - should put out the order receipt -->

- Customer#total_purchases_amount

  <!-- - instance method that returns the cost of all of the Customer's coffee orders -->

- Customer#dislike_coffee(coffee_title)
  <!-- - instance method that takes in a coffee_title, finds the last order for that coffee and removes it.
  - `puts` a message formatted like: `{customer name} has been refunded ${price}` -->

## Coffee

- Coffee#orders
  <!-- - returns a collection of all Order instances for this coffee -->
- Coffee#customers
  <!-- - returns a collection of all Customer instances who ordered this coffee -->

- Coffee#unique_customer_names
  <!-- - returns an array with all of the customers names who have ordered the coffee -->

- Coffee.most_ordered

  - returns the Coffee instance that was ordered the most

# Bonus

- Order.most_expensive
  - class method that returns the order instance that was the most expensive.
  - if there are multiple, return the first
