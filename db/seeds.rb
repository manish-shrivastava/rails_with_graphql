# db/seeds.rb
# john = User.create!(
#   email: "john.doe@example.com",
#   first_name: "John",
#   last_name: "Doe"
# )

# jane = User.create!(
#   email: "jane.doe@example.com",
#   first_name: "Jane",
#   last_name: "Doe"
# )

# Item.create!(
#   [
#     {
#       title: "Martian Chronicles",
#       description: "Cult book by Ray Bradbury",
#       user: john,
#       image_url: "https://upload.wikimedia.org/wikipedia/en/4/45/The-Martian-Chronicles.jpg"
#     },
#     {
#       title: "The Martian",
#       description: "Novel by Andy Weir about an astronaut stranded on Mars trying to survive",
#       user: john,
#       image_url: "https://upload.wikimedia.org/wikipedia/en/c/c3/The_Martian_2014.jpg"
#     },
#     {
#       title: "Doom",
#       description: "A group of Marines is sent to the red planet via an ancient " \
#                    "Martian portal called the Ark to deal with an outbreak of a mutagenic virus",
#       user: jane,
#       image_url: "https://upload.wikimedia.org/wikipedia/en/5/57/Doom_cover_art.jpg"
#     },
#     {
#       title: "Mars Attacks!",
#       description: "Earth is invaded by Martians with unbeatable weapons and a cruel sense of humor",
#       user: jane,
#       image_url: "https://upload.wikimedia.org/wikipedia/en/b/bd/Mars_attacks_ver1.jpg"
#     }
#   ]
# )

# order1 = Order.create(description: "King of the Hill DVD", total: 100.00)
# order2 = Order.create(description: "Mega Man 3 OST", total: 29.99)
# order3 = Order.create(description: "Punch Out!! NES", total: 0.75)

# payment1 = Payment.create(order_id: order1.id, amount: 20.00)
# payment2 = Payment.create(order_id: order2.id, amount: 1.00)
# payment3 = Payment.create(order_id: order3.id, amount: 0.25)

# 100.times{ |i|  Post.create(title: "title #{i}",content: "content #{i}",published: [true,false].sample)}

5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
  5.times do
    user.posts.create(title: Faker::Lorem.sentence(word_count: 3), body: Faker::Lorem::paragraph(sentence_count: 3))
  end
end
