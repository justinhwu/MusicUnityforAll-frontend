# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
justin = User.find_or_create_by(name: 'Justin', username:'justinwu', password: 'hi', birthday: 'N/A', email: 'justin.wu@flatironschool.com' )
playlist3 = Playlist.find_or_create_by(name: "Ride the Rails", description: "All my headbangers break ur neck", genre: 'BASS GANG', user_id: justin.id)


bob = User.find_or_create_by(name: 'Bob', username: 'bob', password: 'bob', birthday: 'N/A', email: 'bob@gmail.com')
playlist1 = Playlist.find_or_create_by(name: "Bob's Bangers", description: "It's LIIIIIIT", genre: 'Bass', user_id: bob.id)
playlist2 = Playlist.find_or_create_by(name: "Bob's Bangers Vol 2.", description: "MUCHO LITTO", genre: 'BASS IN YA FACE', user_id: bob.id)
