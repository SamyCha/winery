# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Calendar.destroy_all
#Conversation.destroy_all
#Message.destroy_all
#Notification.destroy_all
#Photo.destroy_all
#Reservation.destroy_all
#Review.destroy_all
#Room.destroy_all
#Setting.destroy_all
#User.destroy_all
#puts "All tables are destroyed !

#{}puts "Generating clean seed ""


#Creating users
#x = User.create!(email: "samy@gmail.com", password: "123456", fullname: "Samy", state: 1)
#y = User.create!(email: "damien@gmail.com", password: "123456", fullname: "Damien", state: 1)
#z = User.create!(email: "acheteur@gmail.com", password: "123456", fullname: "Acheteur", state: 0)

#Creating bottles
#Room.create! (home_type:"Champagne", room_type:"Rosé", accommodate: 2012, bed_room: 1, bath_room: 3,
#  listing_name: "Roederer", description: "very good champagne", address:"Bordeaux Place de la Victoire",
#  is_tv: true, price: 50, active: 1, latitude: 44.830700, longitude: -0.572040, user_id: x.id)

#puts "----- Seed done ! -----"




#    t.string "home_type" :type of wine
#    t.string "room_type" : appelation
#    t.integer "accommodate" :  year
#    t.integer "bed_room" : conservation
#    t.integer "bath_room":  size of bottle
#    t.string "listing_name": name of bottle
#    t.text "summary": description
#    t.string "address": address
#    t.boolean "is_tv": to take away
#    t.boolean "is_kitchen": delivered in less than 5min
#    t.boolean "is_air": good conservation
#    t.boolean "is_heating": invoice of the bottle
#    t.boolean "is_internet": delivered in less than 15min
#    t.integer "price": price
#    t.boolean "active": published
#    t.bigint "user_id"
#    t.float "latitude": latitude
#    t.float "longitude": longitude
#    t.integer "instant", default: 1

