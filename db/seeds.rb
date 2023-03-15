# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

book = Book.create(name: 'Harry Potter', price: 24.99)

5.times do
  book.sells << Sell.create(quantity: rand(2..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end
