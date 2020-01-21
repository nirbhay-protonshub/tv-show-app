# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
devesh = User.create(email: 'devesh.tiwari@protonshub.com', password: 'test123')
contact = User.create(email: 'contact@protonshub.com', password: 'test123')

# CHANNELS
amc = Channel.create(name: "AMC")
usa = Channel.create(name: "USA")
hbo = Channel.create(name: "HBO")
netflix = Channel.create(name: "Netflix Original")

# SHOWS
terror = Show.create( title: 'The Terror',
                      description: 'A fictionalized account of Captain Sir John Franklin\'s lost expedition to the Arctic',
                      day: 'Tue',
                      time: '8:00 PM',
                      current_season: 1 )
terror.genres << horror
terror.channel = amc
terror.save

mr_robot = Show.create( title: 'Mr. Robot',
                      description: 'A hacker joins a group of hacktivists to destroy all deb records',
                      current_season: 3 )
mr_robot.genres << drama
mr_robot.channel = usa
mr_robot.save

got = Show.create( title: 'Game of Thrones',
                      description: 'A fantasty drama series adapted from George R.R. Martin\'s novels',
                      current_season: 7 )
got.genres << drama
got.genres << fantasy
got.channel = hbo
got.save

lost_in_space = Show.create( title: 'Lost in Space',
                      description: 'Following the adventures of a family of pioneering space colonists whose ship veers off-course',
                      current_season: 1 )
lost_in_space.channel = netflix
lost_in_space.save

# Listing
listing1 = Listing.create(show: terror, user: devesh, user_status: 'Currently Watching', user_season: 1)
listing2 = Listing.create(show: mr_robot, user: devesh, user_status: "Not Started", user_season: 1)
listing3 = Listing.create(show: got, user: devesh, user_status: "Caught Up", user_season: 7, fav: true)
listing4 = Listing.create(show: lost_in_space, user: devesh, user_status: "Currently Watching", user_season: 1, fav: true)
listing5 = Listing.create(show: lost_in_space, user: contact, user_status: "Not Started", user_season: 1)
