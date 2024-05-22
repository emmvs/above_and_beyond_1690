puts "Cleaning database... 🧼"
# Deleting Data in DB != Dropping the DB
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5, chef_name: 'Naved Nasir'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4, chef_name: 'Gordon Ramsay'}
gramm =  {name: "Gramm", address: "Rue du Bussont, Brussels", rating: 4, chef_name: 'Martin'}
dorle =  {name: "Dorle", address: "Kottbusser Damm, Berlin", rating: 5, chef_name: 'Muriel'}

[gramm, dorle, dishoom, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished! 👻"
