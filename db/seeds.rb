# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
TYPES = ['socks', 'suit', 'shirt', 'tuxedo', 'dress', 'scarf', 't-shirt', 'skirt', 'onepiece', 'trenchcoat', 'sneakers', 'boots', 'pumps', 'shorts', 'ball gown', 'jacket', 'dungarees', 'cosplay', 'pants', 'trousers', 'socks', 'shoes', 'sandals', 'swimsuit', 'slippers', 'sweater', 'tie', 'rags', 'shoes', 'gloves', 'heels']

puts 'Removing the outfits...'
Outfit.destroy_all

 25.times do Outfit.create!(
    name: "#{Faker::Emotion.noun} #{TYPES.sample}",
    color: Faker::Color.color_name,
    size: ['s', 'm', 'l', 'xl'].sample,
    price: rand(500..40000),
    description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
    molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
    numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
    optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
    obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
    nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
    tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
    quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos
    sapiente officiis modi at sunt excepturi expedita sint?',
    # rating: rand(1..5),
    category: Faker::Restaurant.type.split.first,
    location: Faker::Address.latitude
  )
end

puts "...created #{Outfit.count} outfits"
