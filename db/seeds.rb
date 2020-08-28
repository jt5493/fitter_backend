# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Workout.destroy_all





walk = Category.create(name: "walk")
run = Category.create(name: "run")
bike = Category.create(name: "bike")
swim = Category.create(name: "swim")
hiit = Category.create(name: "hiit")
yoga = Category.create(name: "yoga")
strength = Category.create(name: "strength")
hike = Category.create(name: "hike")
dance = Category.create(name: "dance")
aerobics = Category.create(name: "aerobics")

workout_one = Workout.create(
    title: "walk around the neighborhood",
    description: "walked for 3 miles",
    location: "rock-creek neighborhood",
    category_id: walk.id
    )
