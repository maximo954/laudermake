# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  colors = [ 'black', 'blue', 'green', 'orange', 'red' ]

  user = User.create(name: "Adam Admin", email: "admin@laudermake.com", password: "sample123")
  user = User.create(name: "Raj Jamnis", email: "raj123@gmail.com", password: "sample123")
  user = User.create(name: "Andrew Chung", email: "andrew@hotmail.com", password: "sample123")
  user = User.create(name: "Mike Smith", email: "mike@smith.com", password: "sample123")


  tool = Tool.create(name: "3D Printer", serial_number: "20934c8nwiac02f0sdfk", replacement_cost: 1300.99, label_color: colors.sample)
  tool = Tool.create(name: "Hammer", serial_number: "987b3f93r2d8392cn", replacement_cost: 5.99, label_color: colors.sample)
  tool = Tool.create(name: "Table Saw", serial_number: "83fn30d302dx2f383d9h", replacement_cost: 614.38, label_color: colors.sample)
  tool = Tool.create(name: "Laser Cutter", serial_number: "40871jdfkak8100aj191", replacement_cost: 2099.99, label_color: colors.sample)
