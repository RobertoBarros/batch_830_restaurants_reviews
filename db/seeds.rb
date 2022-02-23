puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

dishoom2 = { name: "Dishoom 2", address: "7 Boundary St, London E2 7JE", stars: 3 }
pizza_east2 =  { name: "Pizza East 2", address: "56A Shoreditch High St, London E1 6PQ", stars: 2 }

[ dishoom, pizza_east, dishoom2, pizza_east2 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
