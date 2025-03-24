# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
cars = Car.create([
  {
    name: "Toyota",
    image_url: "https://www.toyota.com/imgix/responsive/images/mlp/colorizer/2021/corollase/1J9/1.png?bg=fff&fm=webp&w=930"
  },
  {
    name: "Honda",
    image_url: "https://www.honda.com/imgix/responsive/images/mlp/colorizer/2021/civic/1J9/1.png?bg=fff&fm=webp&w=930"
  },
  {
    name: "Ford",
    image_url: "https://www.ford.com/imgix/responsive/images/mlp/colorizer/2021/f150/1J9/1.png?bg=fff&fm=webp&w=930"
  }
])

reviews = Review.create([
  {
    title: 'Great car',
    description: 'I love this car',
    score: 5,
    car: cars.first
  },
  {
    title: 'Bad car',
    description: 'I hate this car',
    score: 1,
    car: cars.first
  }
])

