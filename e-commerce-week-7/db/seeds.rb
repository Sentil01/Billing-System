# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# == Category ==========================================================================================================
fashion_category = Category.create(name: 'Fashion', description: 'Products in this category will allow you to style yourselves')
electronics_category = Category.create(name: 'Electronics', description: 'Products in this category are to add Comfort')

# == Products ==========================================================================================================
Product.create(name: 'Polo T-Shirt', description: 'This is lightly weighted and 100% cotton', category: fashion_category)
Product.create(name: 'Allen Solly Shirt', description: 'This is lightly weighted and 100% cotton', category: fashion_category)
Product.create(name: 'Apple iPhone 11', description: 'Dual 12MP ultra-wide and wide camera', category: electronics_category)
