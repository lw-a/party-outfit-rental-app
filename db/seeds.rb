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
SIZES = ['xs', 's', 'm', 'l', 'xl']

puts 'Removing the outfits...'
Outfit.destroy_all
puts 'Creating new outfits...'

Outfit.create!(
  name: 'Perfect suit to meet the boss',
  color: 'Blue',
  size: 'm',
  price: 3000,
  description: 'Do you have an important meeting with your boss? Want to dress to impress? Rent this suit to stand out of the crowd and get that raise you deserve!',
  category: 'Bussiness',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'
)

Outfit.create!(
  name: 'Beautifull dress',
  color: 'Red',
  size: 's',
  price: 2000,
  description: 'Fantastic dress for any occasion, but bound to impress any date. Dress up or dress down.',
  category: 'Datenight',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://unsplash.com/photos/5IcEBmSOQq0'
)

Outfit.create!(
  name: 'Clown costume. Scary but fun!',
  color: 'Rainbow',
  size: 'l',
  price: 5000,
  description: 'Afraid of clowns? Not anymore! With this costume you will put a smile on all the faces.',
  category: 'Costume',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://unsplash.com/photos/kiq2TSTeH0o'
)

Outfit.create!(
  name: 'Outshine the bride!',
  color: 'White',
  size: 's',
  price: 4000,
  description: 'With this dress you will be sure to outshine the bride, and create all the drama.',
  category: 'Formal',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1585241920473-b472eb9ffbae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2VkZGluZyUyMGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1100&q=60'
)

Outfit.create!(
  name: "Impress all your bro's at the club with this lit fit",
  color: 'gray',
  size: 'm',
  price: 3000,
  description: "Vests are the future!",
  category: 'Club',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://unsplash.com/photos/ZGa9d1a_4tA'
)

Outfit.create!(
  name: 'NaNaNaNaNaNa',
  color: 'Black',
  size: 'l',
  price: 8000,
  description: 'BATMAN! When would this not be a great outfit!!!!',
  category: 'Costume',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://unsplash.com/photos/meqVd5zwylI'
)

Outfit.create!(
  name: 'Power suit',
  color: 'Black',
  size: 's',
  price: 4000,
  description: "Power suit for the power woman. Meet all the KPI's with this outfit",
  category: 'Business',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://unsplash.com/photos/A3MleA0jtoE'
)

Outfit.create!(
  name: 'Nice day fit for a man on the go',
  color: 'blue',
  size: 'm',
  price: 2000,
  description: 'Going for a walk in the park? This is the perfect outfit for you.',
  category: 'Casual',
  address: Faker::Address.full_address,
  user: User.all.sample,
  image_url: 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
)


puts "...created #{Outfit.count} outfits"
