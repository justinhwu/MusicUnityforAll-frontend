# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
justin = User.find_or_create_by(name: 'Justin', username:'justinwu', password: 'hi', birthday: 'N/A', email: 'justin.wu@flatironschool.com' )
playlist3 = Playlist.find_or_create_by(name: "Ride the Rails", description: "All my headbangers break ur neck", genre: 'BASS GANG', user_id: justin.id)
song1 = Song.find_or_create_by(title: 'Gold', channelTitle: 'Illenium & Excision', description: 'Bass & Feels', publishedAt: '6/15/19', videoId: 'FcuMd_N7mmA' )


bob = User.find_or_create_by(name: 'Bob', username: 'bob', password: 'bob', birthday: 'N/A', email: 'bob@gmail.com')
playlist1 = Playlist.find_or_create_by(name: "Bob's Bangers", description: "It's LIIIIIIT", genre: 'Bass', user_id: bob.id)
playlist2 = Playlist.find_or_create_by(name: "Bob's Bangers Vol 2.", description: "MUCHO LITTO", genre: 'BASS IN YA FACE', user_id: bob.id)
song2= Song.find_or_create_by(title: 'I Fall Apart (Slander Remix)', channelTitle: 'Post Malone, Slander', description: 'Heaven Trap', publishedAt: '4/1/10', videoId: 'rS9t176LxGM')
join1 = PlaylistSong.find_or_create_by(playlist_id: playlist3.id, song_id: song1.id)
join2 = PlaylistSong.find_or_create_by(playlist_id: playlist3.id, song_id: song2.id)
join3 = PlaylistSong.find_or_create_by(playlist_id: playlist1.id, song_id: song1.id)
join4 = PlaylistSong.find_or_create_by(playlist_id: playlist1.id, song_id: song2.id)
join5 = PlaylistSong.find_or_create_by(playlist_id: playlist2.id, song_id: song1.id)
