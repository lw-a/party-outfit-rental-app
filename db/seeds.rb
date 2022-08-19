# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Removing the users...'
User.destroy_all
puts 'Creating new users...'
User.create!(email: 'adam@me.com', first_name: 'adam', last_name: '928', password: '123123', avatar: 'https://avatars.githubusercontent.com/u/103736492?v=4')
User.create!(email: 'malene@me.com', first_name: 'malene', last_name: '928', password: '123123', avatar: 'https://avatars.githubusercontent.com/u/107089457?v=4')
User.create!(email: 'andre@me.com', first_name: 'andre', last_name: '928', password: '123123', avatar: 'https://avatars.githubusercontent.com/u/102734981?v=4')
User.create!(email: 'nikki@me.com', first_name: 'nikki', last_name: '928', password: '123123', avatar: 'https://avatars.githubusercontent.com/u/94282878?v=4')
puts "created #{User.count} users"


CATEGORIES = ['Casual', 'Formal', 'Costume', 'Bussiness', 'Club', 'Datenight']
SIZES = ['extra small', 'small', 'medium', 'large', 'extra large']

puts 'Removing the outfits...'
Outfit.destroy_all
puts 'Creating new outfits...'

Outfit.create!(
  name: 'Perfect suit to meet the boss',
  color: 'Blue',
  size: 'medium',
  price: 3000,
  description: 'Do you have an important meeting with your boss? Want to dress to impress? Rent this suit to stand out of the crowd and get that raise you deserve!',
  category: 'Bussiness',
  address: "2 chome-11-3 meguro, tokyo 1530063",
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'
)

Outfit.create!(
  name: 'Beautiful dress',
  color: 'Red',
  size: 'small',
  price: 2000,
  description: 'Fantastic dress for any occasion, but bound to impress any date. Dress up or dress down.',
  category: 'Datenight',
  address: "1 chome-27 Higashiyama, meguro, tokyo 1530043",
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=892&q=80'
)

Outfit.create!(
  name: 'Clown costume. Scary but fun!',
  color: 'Rainbow',
  size: 'large',
  price: 5000,
  description: 'Afraid of clowns? Not anymore! With this costume you will put a smile on all the faces.',
  category: 'Costume',
  address: '4 Chome-2-8, Minato, Tokyo 105-0011',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1587331722574-acf78f587c4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'
)

Outfit.create!(
  name: 'Outshine the bride!',
  color: 'White',
  size: 'small',
  price: 4000,
  description: 'With this dress you will be sure to outshine the bride, and create all the drama.',
  category: 'Formal',
  address: '1 Chome-1-2, Sumida, Tokyo 131-0045',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1585241920473-b472eb9ffbae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2VkZGluZyUyMGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1100&q=60'
)

Outfit.create!(
  name: "Impress all your bro's at the club with this lit fit",
  color: 'gray',
  size: 'medium',
  price: 3000,
  description: "Vests are the future!",
  category: 'Club',
  address: '2 Chome Toranomon, Minato, Tokyo 1050001',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=898&q=80'
)

Outfit.create!(
  name: 'NaNaNaNaNaNa',
  color: 'Black',
  size: 'large',
  price: 8000,
  description: 'BATMAN! When would this not be a great outfit!!!!',
  category: 'Costume',
  address: '1 Chome Kamiuma, Setagaya, Tokyo 1540011',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
)

Outfit.create!(
  name: 'Power suit',
  color: 'Black',
  size: 'small',
  price: 4000,
  description: "Power suit for the power woman. Meet all the KPI's with this outfit",
  category: 'Business',
  address: '1 Chome Daita, Setagaya, Tokyo 1550033',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1614786269829-d24616faf56d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80'
)

Outfit.create!(
  name: 'Nice day fit for a man on the go',
  color: 'blue',
  size: 'extra small',
  price: 2000,
  description: 'Going for a walk in the park? This is the perfect outfit for you.',
  category: 'Casual',
  address: '2 chome-11-3 meguro, tokyo 1530063',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
)

Outfit.create!(
  name: 'Money maker suit',
  color: 'green',
  size: 'medium',
  price: 3250,
  description: 'This green suit got me seeing green $$$',
  category: 'Business',
  address: 'Roppongi Hills, Tokyo',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1548454782-15b189d129ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1376&q=80'
)

Outfit.create!(
  name: 'Bringer of Death',
  color: 'black',
  size: 'extra large',
  price: 300,
  description: 'Wore once shibuya scramble halloween - was lit',
  category: 'Costume',
  address: 'Shibuya Scramble, Tokyo',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1506364180601-180da27fe1b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=426&q=80'
)

Outfit.create!(
  name: 'My Favourite Bikini',
  color: 'red',
  size: 'extra small',
  price: 500,
  description: "YASSS it's summer let's get litty",
  category: 'Casual',
  address: 'Yokohama Bay, Yokohama, Japan',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1566765830178-09800de1df6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
)

Outfit.create!(
  name: 'Riding Gear',
  color: 'Colourful',
  size: 'medium',
  price: 42069,
  description: "Traditional riding gear of my people. Belonged to my great great great grandfather and has been passed down through the generations. Feels great when riding horses",
  category: 'Costume',
  address: 'Tokyo Racecourse, Japan',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1633846827817-8f19ed03c196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
)

Outfit.create!(
  name: 'Dress Robes',
  color: 'Burgundy',
  size: 'medium',
  price: 1994,
  description: "Wore it to the Yule Ball once. So embarassing. Very traditional",
  category: 'Formal',
  address: 'Akasaka Biz Tower, Minato, Tokyo',
  user: User.all.sample,
  image_url: 'https://i.pinimg.com/originals/da/58/1a/da581aa9389e74701fc0c38fcae106bd.jpg'
)

Outfit.create!(
  name: 'Football Kit',
  color: 'red',
  size: 'extra small',
  price: 700,
  description: "Come on you reds! Kit from my favourite footie team make your opponent red with anger whilst stylin' on them in this kit. ",
  category: 'Club',
  address: 'Ajinomoto Stadium, Tokyo',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1648586921990-e433b78f08a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=837&q=80'
)

Outfit.create!(
  name: 'Goth Chic',
  color: 'black',
  size: 'large',
  price: 850,
  description: "Being goth has never looked so stylish. Rent this and try being goth for the day",
  category: 'casual',
  address: 'Harajuku station, Tokyo',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1647184504231-82e360dbcddb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
)

Outfit.create!(
  name: 'This fit got me a gf',
  color: 'black',
  size: 'large',
  price: 999,
  description: "This dope fit got me a gf so now that I'm all settled down with bae I don't gotta care about what I wear no more so just passing on my threads and wisdom",
  category: 'Datenight',
  address: 'InterContinental - ANA Tokyo, Tokyo',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1536243298747-ea8874136d64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
)

Outfit.create!(
  name: "Dress like you're middle class",
  color: 'beige',
  size: 'extra large',
  price: 1200,
  description: "Put this on and you'll fool everyone into thinking you actually fit in at the clubhouse bar down the nearest country club you keep trying to get into.",
  category: 'casual',
  address: 'Kasumigaseki Country Club, Saitama, Japan',
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1625178494269-c91109fcc711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80'
)

puts "...created #{Outfit.count} outfits"


puts 'Adding reviews...'

SUBJECTS = ['owner', 'outfit', 'fit', 'service', 'look']

Outfit.all.each do |outfit|
  rand(1..3).times do
    review = Review.new(rating: rand(3..5), comment: Faker::Adjective.positive.capitalize + ' ' + SUBJECTS.sample)
    review.outfit = outfit
    review.save!
  end
  rand(0..1).times do
    review = Review.new(rating: rand(1..2), comment: Faker::Adjective.negative.capitalize + ' ' + SUBJECTS.sample)
    review.outfit = outfit
    review.save!
  end
end

puts "...created #{Review.count} reviews"
