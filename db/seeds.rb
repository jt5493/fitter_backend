# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
walk = Cateogry.create(name: "walk")
run = Cateogry.create(name: "run")
bike = Cateogry.create(name: "bike")
swim = Cateogry.create(name: "swim")
hiit = Cateogry.create(name: "hiit")
yoga = Cateogry.create(name: "yoga")
strength = Cateogry.create(name: "strength")
hike = Cateogry.create(name: "hike")
dance = Cateogry.create(name: "dance")
aerobics = Cateogry.create(name: "aerobics")

workout_one = Workout.create(
    title: "walk around the neighborhood",
    description: "walked for 3 miles",
    location: "rock-creek neighborhood",
    category_id: walk.id
    )
