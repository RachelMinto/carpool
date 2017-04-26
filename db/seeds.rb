# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alice = Fabricate(:user)
mary = Fabricate(:user)
ben = Fabricate(:user)
carol = Fabricate(:user)
dave = Fabricate(:user)

Carpool.create(parking_address: '44 Watson Ave.', city: 'Boston', state: 'MA', zipcode: '02214', am_start: '05:00 AM', am_end: '06:00 AM', pm_start: '04:30 PM', pm_end: '5:45 PM', total_seats: 4, user_id: alice.id)
Carpool.create(parking_address: '48 Longwood Ave.', city: 'Brookline', state: 'MA', zipcode: '02344', am_start: '05:10 AM', am_end: '07:00 AM', pm_start: '04:30 PM', pm_end: '5:45 PM', total_seats: 3, user_id: ben.id)
Carpool.create(parking_address: '44 Johnson Rd.', city: 'Boston', state: 'MA', zipcode: '02214', am_start: '04:40 AM', am_end: '05:00 AM', pm_start: '04:30 PM', pm_end: '6:15 PM', total_seats: 6, user_id: mary.id)
Carpool.create(parking_address: '44 Binney St.', city: 'Boston', state: 'MA', zipcode: '02214', am_start: '06:00 AM', am_end: '07:00 AM', pm_start: '05:00 PM', pm_end: '5:45 PM', total_seats: 4, user_id: carol.id)
