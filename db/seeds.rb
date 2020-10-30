# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Asta = User.create(username: "user1", password: "abc123", name: "Asta", title: "NYC INSP")


mm = Restaurant.create(name:"TimeSquareRest", thumb: "SOmeURL", address: "1600 Broadway, New York, NY 10019", lat: 40.758896, lon: -73.985130)
ss = Restaurant.create(name:"SquareCirleRest", thumb: "SOmeURL", address: "2000 Broadway, New York, NY 10019", lat: 45.758896, lon: -63.985130)


inspect1 = Inspection.create(date: "2020-10-30", time: "09:00", user:Asta, restaurant:mm)
inspect2 = Inspection.create(date: "2020-10-30", time: "14:00", user:Asta, restaurant:ss)


Report.create(note:"mm very taste", grade:"A", inspection:inspect1)
Report.create(note:"mm floor is cleam", grade:"A+", inspection:inspect1)
Report.create(note:"square isn't a circle", grade:"B", inspection:inspect2)