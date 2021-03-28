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

u1 = User.create!(username: "yvonne", password: "123", name: 'Yvonne', age: 17, email: 'HungLikeMcJagger@ChristianMingle.com', bio: 'Can cook the best bowl of cereal', artist: true)
u2 = User.create!(username: "nick", password: "456", name: 'Nick', age: 69, email: 'sauteedshroms69@hotmail.com', bio: 'only lemons', artist: false)
u3 = User.create!(username: "abraham", password: "789", name: 'Abraham', age: 25, email: 'FreshOutTheOven@gmail.com', bio: 'Jalapeno Poppers and Gatorade', artist: false)

v1 = Venue.create!(address: "7928 Miles St.Forney, TX 75126")
v2 = Venue.create!(address: "9969 New Saddle Road, Chippewa Falls, WI 54729")
v3 = Venue.create!(address: "97 Gainsway Ave.Sheboygan, WI 53081")

e1 = Event.create!(name: 'EDC', start: DateTime.parse("2021/05/15 21:00:00 EST"), end: DateTime.parse("2021/05/17 09:00:00 EST"), summary: "EDM Music Festival", description: 'sweaty people and rave music', price: 250,  status: "On Schedule", age_restriction: 18, presented_by: "Insomniac", image: "https://lasvegas.electricdaisycarnival.com/", user_id: u1.id, venue_id: v1.id)
e2 = Event.create!(name: 'Tomorrowland', start: DateTime.parse("2021/07/17 18:00:00 EST"), end: DateTime.parse("2021/07/19 02:00:00 EST"), summary: "EDM Music Festival", description: 'european mystical forest shit', price: 270,  status: "Delayed", age_restriction: 18, presented_by: "Tomorrowland", image: "https://www.tomorrowland.com/home/", user_id: u2.id, venue_id: v2.id)
e3 = Event.create!(name: 'Coachella', start: DateTime.parse("2021/04/09 20:00:00 EST"), end: DateTime.parse("2021/04/11 02:00:00 EST"), summary: "Coachella Valley Music and Arts Festival", description: 'varities of music type', price: 450,  status: "Cancelled", age_restriction: 21, presented_by: "Coachella", image: "https://www.coachella.com/", user_id: u3.id, venue_id: v3.id)

t1 = Ticket.create!(user_id: u1.id, event_id: e3.id)
t2 = Ticket.create!(user_id: u2.id, event_id: e1.id)
t3 = Ticket.create!(user_id: u3.id, event_id: e2.id)












