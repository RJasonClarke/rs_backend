# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Syllabus.destroy_all
Category.destroy_all

art = Category.create(name: "Art")
tech = Category.create(name: "Tech")
science = Category.create(name: "Science")

Syllabus.create(title:"My ass", description:"Wide and round.", image_url: "https://daphnechicagodotcom.files.wordpress.com/2020/11/kingcobra-jack.jpg?w=1280", category_id: art.id)