# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = [{name: "Rollerball Pen", image_url: "/images/rollerball_pen.jpeg"},
         {name: "Fountain Pen", image_url: "/images/fountain_pen.jpeg"},
         {name: "Ink Cartridges", image_url: "/images/ink_cartridges.jpeg"},
         {name: "Bottled Ink", image_url: "/images/bottled_ink.jpeg"},
         {name: "Notebook", image_url: "/images/notebook.jpeg"},
         {name: "Stationery", image_url: "/images/stationery.jpeg"},
        ]

items.each do |item|
  puts "Creating #{item[:name]}"
  Item.create!(item)
end
