# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Booking.destroy_all
Island.destroy_all
User.destroy_all
# User 1
james = User.new(email: 'james@hotmail.com', password: 'azerty')
james.save

# User 2
tom = User.new(email: 'tom@tom.com', password: 'qwerty')
tom.save

# Island 1
mauritius = Island.new(name: 'Mauritius', location: 'Mauritius',
                      price: 10000,
                      description: "Mauritius, an Indian Ocean island nation, is known for its beaches, lagoons and reefs. The mountainous interior includes Black River Gorges National Park, with rainforests, waterfalls, hiking trails and wildlife like the flying fox."
                      )

mauritius.photos.attach(io: URI.open('https://www.planetdiveholidays.com/blog/wp-content/uploads/sites/3/2016/07/aerial-photo-le-morne-mauritius-e1518086891149.jpg'),
                      filename: 'mauritius.png',
                      content_type: 'image/jpg')
mauritius.user = james
p james
mauritius.save
puts mauritius.name

# Island 2
tasmania = Island.new(name: 'Tasmania', location: 'Tasmania',
                      price: 12000,
                      description: 'Tasmania, abbreviated as Tas, is an island state of Australia. It is located 240 km to the south of the Australian mainland, separated from it by the Bass Strait.'
                      )

tasmania.photos.attach(io: URI.open('https://bloximages.newyork1.vip.townnews.com/stltoday.com/content/tncms/assets/v3/editorial/c/e6/ce6048b7-a206-5628-9e7f-331aef27b6c3/56f1f554973ff.image.jpg'),
                      filename: 'tasmania.jpg',
                      content_type: 'image/jpg')
tasmania.user = james
tasmania.save
puts tasmania.name

# Island 3
bora = Island.new(name: 'Bora Bora', location: 'Bora Bora',
                  price: 9000,
                  description: "Bora Bora is a small South Pacific island northwest of Tahiti in French Polynesia. Surrounded by sand-fringed motus (islets) and a turquoise lagoon protected by a coral reef, it’s known for its scuba diving"
                  )

bora.photos.attach(io: URI.open('https://pix8.agoda.net/hotelImages/2311976/0/28f866c007b559024a4833e6ea93217b.jpg'),
                  filename: 'borabora.jpg',
                  content_type: 'image/jpg')
bora.user = tom
bora.save!
puts bora.name

# Island 4
fiji = Island.new(name: 'Fiji Islands', location: 'Fiji',
                  price: 9500,
                  description: "Fiji, a country in the South Pacific, is an archipelago of more than 300 islands. It's famed for rugged landscapes, palm-lined beaches and coral reefs with clear lagoons."
                  )

fiji.photos.attach(io: URI.open('https://img.traveltriangle.com/blog/wp-content/uploads/2018/11/Cover-Fiji-In-Decemberepb0310.jpg'),
                  filename: 'fiji.jpg',
                  content_type: 'image/jpg')
fiji.user = tom
fiji.save
puts fiji.name

# Island 5
hawaii = Island.new(name: 'Hawaii Islands', location: 'Hawaii',
                    price: 10500,
                    description: "The culture of our Hawaiian Islands is steeped in the values of kuleana and aloha."
                    )

hawaii.photos.attach(io: URI.open('https://www.gannett-cdn.com/presto/2020/01/15/USAT/610d28ed-f048-4808-bbef-589bc5ef6cc6-Hawaii.jpg'),
                    filename: 'hawaii.jpg',
                    content_type: 'image/jpg')
hawaii.user = tom
hawaii.save
puts hawaii.name

# Island 6
shetland = Island.new(name: 'South Shetland Island', location: 'Nelson Island',
                    price: 5000,
                    description: "Nelson Island is an island in the Sunshine Coast region of the South Coast region of British Columbia. It is surrounded by Hotham Sound, Agamemnon Channel, and Malaspina Strait."
                    )

shetland.photos.attach(io: URI.open('https://img.traveltriangle.com/blog/wp-content/uploads/2017/09/Lankayan.jpg'),
                    filename: 'nelson.jpg',
                    content_type: 'image/jpg')
shetland.user = james
shetland.save
puts shetland.name
