# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "chasejarms")
User.create!(username: "jessie102")
User.create!(username: "helloworld")
User.create!(username: "timelystuff")
User.create!(username: "username")

Question.create!(body: "Our shop makes custom furniture. However, over 20% of our
products are damaged in transit. What can we do to lower that percentage while
  not significantly increasing our shipping costs?", prize_money: 100, user_id: 1)

Solution.create!(body: "Have you thought about using other shipping services?", user_id: 2, question_id: 1)
Solution.create!(body: "Have you tried using additional bubble wrap?", user_id: 3, question_id: 1)
Solution.create!(body: "Put the picture of a TV on your packages so that those
shipping it take better care of your product (even if it's not a TV)", user_id: 4, question_id: 1)
