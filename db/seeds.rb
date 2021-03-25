# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.destroy_all
Event.destroy_all
Venue.destroy_all
User.destroy_all

u1 = User.create!(name: 'Yvonne', age: 17, email: 'HungLikeMcJagger@ChristianMingle.com', bio: 'Can cook the best bowl of cereal', artist: true)
u2 = User.create!(name: 'Nick', age: 69, email: 'sauteedshroms69@hotmail.com', bio: 'only lemons', artist: false)
u3 = User.create!(name: 'Abraham', age: 25, email: 'FreshOutTheOven@gmail.com', bio: 'Jalapeno Poppers and Gatorade', artist: false)

v1 = Venue.create!(address: "7928 Miles St.Forney, TX 75126")
v2 = Venue.create!(address: "9969 New Saddle Road, Chippewa Falls, WI 54729")
v3 = Venue.create!(address: "97 Gainsway Ave.Sheboygan, WI 53081")

e1 = Event.create!(name: 'EDC', date: 'May 16, 2021', description: 'sweaty people and rave music', price: 250,  user_id: u1.id, venue_id: v1.id)
e2 = Event.create!(name: 'Tomorrowland', date: 'July 25, 2020', description: 'european mystical forest shit', price: 800,  user_id: u2.id, venue_id: v2.id)
e3 = Event.create!(name: 'Lost Lands', date: 'September 24, 2021', description: 'a lot of sweaty people and bass', price: 150,  user_id: u3.id, venue_id: v3.id)

t1 = Ticket.create!(user_id: u1.id, event_id: e1.id)
t2 = Ticket.create!(user_id: u2.id, event_id: e1.id)
t3 = Ticket.create!(user_id: u3.id, event_id: e1.id)












