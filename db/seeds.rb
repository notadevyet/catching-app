# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
TimeSlot.destroy_all
UserEvent.destroy_all
Event.destroy_all
User.destroy_all

ege = User.create(email: "ege@ege.com", password: "123456", first_name: "Ege", last_name: "Çakmak")
sedef = User.create(email: "sedef@sedef.com", password: "123456", first_name: "Sedef", last_name: "Çakmak")
okan = User.create(email: "okan@okan.com", password: "123456", first_name: "Okan", last_name: "Erturan")

event1 = Event.create(name: 'meeting online', description: 'a merry gathering', user: okan)
event2 = Event.create(name: 'meeting outside', description: 'a joyful evening', user: okan)

netflix = { name: 'Movies', duration: 12, description: 'Binge watching your favorite tv series', event: event1 }
gaming = { name: 'Gaming', duration: 1, description: 'Discover a vast variety of online games', event: event1 }
kareoke = { name: 'Kareoke', duration: 2, description: 'Unleash your inner rockstar!', event: event1 }

[netflix, gaming, kareoke].each do |attributes|
  activity = Activity.create!(attributes)
  puts "created #{activity.name}"
end
