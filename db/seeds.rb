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

# User 3
john = User.new(email: 'john@tom.com', password: 'qwerty')
john.save

# User 4
bernard = User.new(email: 'bernard@tom.com', password: 'qwerty')
bernard.save

# Island 1
mauritius = Island.new(name: 'Mauritius', location: 'Mauritius',
                      price: 10000,
                      description: "Mauritius, an Indian Ocean island nation, is known for its beaches, lagoons and reefs. The mountainous interior includes Black River Gorges National Park, with rainforests, waterfalls, hiking trails and wildlife like the flying fox.",
                      ocean: "Indian Ocean"
                      )

mauritius.photos.attach(io: URI.open('https://www.planetdiveholidays.com/blog/wp-content/uploads/sites/3/2016/07/aerial-photo-le-morne-mauritius-e1518086891149.jpg'),
                      filename: 'mauritius.png',
                      content_type: 'image/jpg')
p 'picture'
mauritius.photos.attach(io: URI.open('https://www.planetware.com/wpimages/2020/03/mauritius-best-resorts-shangri-las-le-touessrok-resort-spa.jpg'),
                      filename: 'mauritius.png',
                      content_type: 'image/jpg')
p 'picture'
mauritius.photos.attach(io: URI.open('https://mauritiuspropertyrealestate.files.wordpress.com/2013/02/oneonly-le-saint-geran-6.jpg'),
                      filename: 'mauritius.png',
                      content_type: 'image/jpg')
p 'picture'
mauritius.user = james
p james
mauritius.save
puts mauritius.name



# Island 2
tasmania = Island.new(name: 'Tasmania', location: 'Tasmania',
                      price: 12000,
                      description: 'Tasmania, abbreviated as Tas, is an island state of Australia. It is located 240 km to the south of the Australian mainland, separated from it by the Bass Strait.',
                      ocean: "Pacific Ocean"
                      )

tasmania.photos.attach(io: URI.open('https://bloximages.newyork1.vip.townnews.com/stltoday.com/content/tncms/assets/v3/editorial/c/e6/ce6048b7-a206-5628-9e7f-331aef27b6c3/56f1f554973ff.image.jpg'),
                      filename: 'tasmania.jpg',
                      content_type: 'image/jpg')
p 'picture'
tasmania.photos.attach(io: URI.open('https://www.traveller.com.au/content/dam/images/h/1/h/e/c/r/image.related.articleLeadwide.620x349.h1ha2o.png/1567145915767.jpg'),
                      filename: 'tasmania.jpg',
                      content_type: 'image/jpg')
p 'picture'
tasmania.photos.attach(io: URI.open('https://www.responsibletravel.com/imagesclient/L_207748.jpg'),
                      filename: 'tasmania.jpg',
                      content_type: 'image/jpg')
p 'picture'
tasmania.user = james
tasmania.save
puts tasmania.name



# Island 3
bora = Island.new(name: 'Bora Bora', location: 'Bora Bora',
                  price: 9000,
                  description: "Bora Bora is a small South Pacific island northwest of Tahiti in French Polynesia. Surrounded by sand-fringed motus (islets) and a turquoise lagoon protected by a coral reef, it’s known for its scuba diving",
                  ocean: "Pacific Ocean"
                  )

bora.photos.attach(io: URI.open('https://pix8.agoda.net/hotelImages/2311976/0/28f866c007b559024a4833e6ea93217b.jpg'),
                  filename: 'borabora.jpg',
                  content_type: 'image/jpg')
p 'picture'
bora.photos.attach(io: URI.open('https://cdn2.civitatis.com/polinesia-francesa/bora-bora/galeria/header/bora-bora-tiburones-peces-rayas-snorkel.jpg'),
                  filename: 'borabora.jpg',
                  content_type: 'image/jpg')
p 'picture'
bora.photos.attach(io: URI.open('https://www.bestereistijd.nl/uploads/2019/07/4029449-640x360.jpg'),
                  filename: 'borabora.jpg',
                  content_type: 'image/jpg')
p 'picture'
bora.user = tom
bora.save!
puts bora.name



# Island 4
fiji = Island.new(name: 'Fiji Islands', location: 'Fiji',
                  price: 9500,
                  description: "Fiji, a country in the South Pacific, is an archipelago of more than 300 islands. It's famed for rugged landscapes, palm-lined beaches and coral reefs with clear lagoons.",
                  ocean: "Pacific Ocean"
                  )

fiji.photos.attach(io: URI.open('https://img.traveltriangle.com/blog/wp-content/uploads/2018/11/Cover-Fiji-In-Decemberepb0310.jpg'),
                  filename: 'fiji.jpg',
                  content_type: 'image/jpg')
p 'picture'
fiji.photos.attach(io: URI.open('https://www.thebrokebackpacker.com/wp-content/uploads/2019/10/Fiji-shutterstock_190694777.jpg'),
                  filename: 'fiji.jpg',
                  content_type: 'image/jpg')
p 'picture'
fiji.photos.attach(io: URI.open('https://img.traveltriangle.com/blog/wp-content/uploads/2018/11/Cover-Fiji-In-Decemberepb0310.jpg'),
                  filename: 'fiji.jpg',
                  content_type: 'image/jpg')
p 'picture'
fiji.user = tom
fiji.save
puts fiji.name



# Island 5
hawaii = Island.new(name: 'Hawaii Islands', location: 'Hawaii',
                    price: 10500,
                    description: "The culture of our Hawaiian Islands is steeped in the values of kuleana and aloha.",
                    ocean: "Pacific Ocean"
                    )

hawaii.photos.attach(io: URI.open('https://www.gannett-cdn.com/presto/2020/01/15/USAT/610d28ed-f048-4808-bbef-589bc5ef6cc6-Hawaii.jpg'),
                    filename: 'hawaii.jpg',
                    content_type: 'image/jpg')
p 'picture'
hawaii.photos.attach(io: URI.open('https://photo980x880.mnstatic.com/41bfa6979535e69e35a984ae247606d4/maui-hawaii-9067880.jpg'),
                    filename: 'hawaii.jpg',
                    content_type: 'image/jpg')
p 'picture'
hawaii.photos.attach(io: URI.open('https://haleakalaecotours.com/wp-content/uploads/2019/04/hawaii-dangerous-waves.jpg'),
                    filename: 'hawaii.jpg',
                    content_type: 'image/jpg')
p 'picture'
hawaii.user = tom
hawaii.save
puts hawaii.name



# Island 6
shetland = Island.new(name: 'South Shetland Island', location: 'Nelson Island',
                    price: 5000,
                    description: "Nelson Island is an island in the Sunshine Coast region of the South Coast region of British Columbia. It is surrounded by Hotham Sound, Agamemnon Channel, and Malaspina Strait.",
                    ocean: "Atlantic Ocean"
                    )

shetland.photos.attach(io: URI.open('https://img.traveltriangle.com/blog/wp-content/uploads/2017/09/Lankayan.jpg'),
                    filename: 'nelson.jpg',
                    content_type: 'image/jpg')
p 'picture'
shetland.photos.attach(io: URI.open('https://www.worldatlas.com/upload/e5/b8/36/shetland-islands-scotland-uk-shaiith.jpg'),
                    filename: 'nelson.jpg',
                    content_type: 'image/jpg')
p 'picture'
shetland.photos.attach(io: URI.open('https://lp-cms-production.imgix.net/features/2019/04/GettyImages-200191809-001-6b53cb0a1edd.jpg'),
                    filename: 'nelson.jpg',
                    content_type: 'image/jpg')
p 'picture'
shetland.user = james
shetland.save
puts shetland.name



# Island 7
fernando = Island.new(name: 'Fernando De Noronha', location: 'Fernando De Noronha, Brazil',
                    price: 9700,
                    description: "The archipelago is made of 21 islands, 354 km (220 mi) away from the Brazilian shore. Due to the South Equatorial Current, the water is very warm and diving with no suit is possible in the 40 m depth. The marine landscape features tunnels, canyons and rocks, making the experience even more exciting.",
                    ocean: "Atlantic Ocean"
                    )

fernando.photos.attach(io: URI.open('https://www.pandotrip.com/wp-content/uploads/2016/04/Fernando.jpg'),
                    filename: 'fernando.jpg',
                    content_type: 'image/jpg')
p 'picture'
fernando.photos.attach(io: URI.open('https://content.r9cdn.net/rimg/dimg/cb/31/6a7e39dd-city-52540-16f0fa77274.jpg?crop=true&width=568&height=320&xhint=1787&yhint=1002'),
                    filename: 'fernando.jpg',
                    content_type: 'image/jpg')
p 'picture'
fernando.photos.attach(io: URI.open('http://www.framboisez-vous.com/wp-content/uploads/2018/03/fernando.jpg'),
                    filename: 'fernando.jpg',
                    content_type: 'image/jpg')
p 'picture'
fernando.user = john
fernando.save
puts fernando.name



# Island 8
canary = Island.new(name: 'Canary Islands', location: 'Canary Islands, Spain',
                    price: 2399,
                    description: "The archipelago consists of a group of islands scattered in the ocean. La Palma and Tenerife are the most popular among the tourists, who come here to enjoy the numerous beaches, unspoiled nature and impeccable resorts.",
                    ocean: "Atlantic Ocean"
                    )

canary.photos.attach(io: URI.open('https://www.pandotrip.com/wp-content/uploads/2016/04/Canary2.jpg'),
                    filename: 'canary.jpg',
                    content_type: 'image/jpg')
p 'picture'
canary.photos.attach(io: URI.open('https://cdn.kiwicollection.com/media/property/PR003249/l/003249-02-custom_RCABAMA_00190_197320.jpg?cb=1438370602'),
                    filename: 'canary.jpg',
                    content_type: 'image/jpg')
p 'picture'
canary.photos.attach(io: URI.open('https://www.itij.com/sites/default/files/styles/og_image/public/2020-11/canary-islands.jpg?h=609db05f&itok=xYpga1Ye'),
                    filename: 'canary.jpg',
                    content_type: 'image/jpg')
p 'picture'
canary.user = john
canary.save
puts canary.name



# Island 9
spitzberg = Island.new(name: 'Spitzberg Island', location: 'Spitzberg, Norway',
                    price: 12000,
                    description: "Located in the chilly waters between mainland Norway and the North Pole, this Arctic Hope Spot supports a high diversity of marine species and contains many unique habitats found nowhere else in the world, including dramatic glaciers and mountain fjords. Spitsbergen (formerly known as West Spitsbergen or Vestspitsbergen in Norwegian) is the largest and only permanently populated island of Norway’s Svalbard Archipelago.",
                    ocean: "Arctic Ocean"
                    )

spitzberg.photos.attach(io: URI.open('https://lh3.googleusercontent.com/keNdjdlDCx3cnuTkHi9OzT2os-g8mlmfxp2DAOGVLanI8eukT32fOKb4uqU3CJlC'),
                    filename: 'spitzberg.jpg',
                    content_type: 'image/jpg')
p 'picture'
spitzberg.photos.attach(io: URI.open('https://www.worldatlas.com/upload/cc/53/f5/northern-lights-longyearbyen-spitsbergen-island-svalbard-norway-ginger-polina-bublik.jpg'),
                    filename: 'spitzberg.jpg',
                    content_type: 'image/jpg')
p 'picture'
spitzberg.photos.attach(io: URI.open('https://www.cruisemapper.com/images/ports/9197-eaef8ea14cc.jpg'),
                    filename: 'spitzberg.jpg',
                    content_type: 'image/jpg')
p 'picture'
spitzberg.user = bernard
spitzberg.save
puts spitzberg.name



# Island 10
seychelles = Island.new(name: 'Seychelles', location: 'Seychelles',
                    price: 12000,
                    description: "An archipelago of some 115 islands, the Seychelles are best known for their private resort islands attracting celebrities and royals from around the globe, the large, smooth rocks lining brilliant white beaches, and those cheeky-looking coco-de-mer nuts that are even found on the passport stamps. Landing on the main island Mahe, where the tiny capital Victoria can be found, you can easily spend the rest of your vacation there, as it has plenty of resorts, plenty of activities, and plenty to see. But you can move on to the larger La Digue or Praslin Islands, or some of the private resort islands such as Fregate, or North Island, depending on what your budget and occasion are. But whichever area you choose, you will find stunning flora and fauna, a sea that is as clear as spring water, and a cuisine that is a tasty mix of creole, French, Indian, African, and then some.",
                    ocean: "Indian Ocean"
                    )

seychelles.photos.attach(io: URI.open('https://upload.travelawaits.com/ta/uploads/2021/04/anse-source-d-argent-beach-in155644-800x800.jpg'),
                    filename: 'seychelles.jpg',
                    content_type: 'image/jpg')
p 'picture'
seychelles.photos.attach(io: URI.open('https://offshore-society.com/wp-content/uploads/2018/02/ouvrir-societe-offshore-seychelles.jpg'),
                    filename: 'seychelles.jpg',
                    content_type: 'image/jpg')
p 'picture'
seychelles.photos.attach(io: URI.open('https://iaa-network.com/wp-content/uploads/2021/03/Seychelles-arbitration-1.jpg'),
                    filename: 'seychelles.jpg',
                    content_type: 'image/jpg')
p 'picture'
seychelles.user = john
seychelles.save
puts seychelles.name



# Island 11
bali = Island.new(name: 'Bali', location: 'Bali, Indonesia',
                    price: 37000,
                    description: "There is no other place like Bali in this world. A magical blend of culture, people, nature, activities, weather, culinary delights, nightlife, and beautiful accommodation. Bali is rated as one of the best travel destinations in the world by countless websites, review portals, and travel magazines each year – for very good reasons. Whatever your age, background, budget or interest, there is something great for everyone to explore and discover. And that’s a promise.",
                    ocean: "Indian Ocean"
                    )

bali.photos.attach(io: URI.open('https://ychef.files.bbci.co.uk/976x549/p014pzq8.jpg'),
                    filename: 'bali.jpg',
                    content_type: 'image/jpg')
p 'picture'
bali.photos.attach(io: URI.open('https://www.traveldailymedia.com/assets/2020/07/bali.jpg'),
                    filename: 'bali.jpg',
                    content_type: 'image/jpg')
p 'picture'
bali.photos.attach(io: URI.open('https://static.toiimg.com/photo/84371258.cms'),
                    filename: 'bali.jpg',
                    content_type: 'image/jpg')
p 'picture'
bali.user = john
bali.save
puts bali.name






















