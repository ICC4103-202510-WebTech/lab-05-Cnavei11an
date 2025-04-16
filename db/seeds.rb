# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create([
  { email: "cristobal@example.com", first_name: "Cristobal", last_name: "Naveillan" },
  { email: "francisco@example.com", first_name: "Francisco", last_name: "Naveillan" },
  { email: "magdalena@example.com", first_name: "Magdalena", last_name: "Naveillan" },
  { email: "felipe@example.com", first_name: "Felipe", last_name: "Tagle" },
  { email: "macarena@example.com", first_name: "Macarena", last_name: "Tagle" },
  { email: "bernardo@example.com", first_name: "Bernardo", last_name: "Fernandez" },
  { email: "tomas@example.com", first_name: "Tomas", last_name: "Fernandez" },
  { email: "martin@example.com", first_name: "Martin", last_name: "Montes" },
  { email: "hernan@example.com", first_name: "Hernan", last_name: "Montes" },
  { email: "elisa@example.com", first_name: "Elisa", last_name: "Foster" }
])
Chat.create([
  { sender_id: 1, receiver_id: 2 },
  { sender_id: 1, receiver_id: 5 },
  { sender_id: 3, receiver_id: 9 },
  { sender_id: 6, receiver_id: 3 },
  { sender_id: 10, receiver_id: 8 },
  { sender_id: 4, receiver_id: 1 },
  { sender_id: 10, receiver_id: 9 },
  { sender_id: 5, receiver_id: 2 },
  { sender_id: 7, receiver_id: 4 },
  { sender_id: 2, receiver_id: 10 }
])

Message.create([
  { chat_id: 1, user_id: 1, body: "hi" },
  { chat_id: 2, user_id: 1, body: "how r u?" },
  { chat_id: 3, user_id: 3, body: "Lets do our proyect of web t" },
  { chat_id: 4, user_id: 6, body: "lets go to the supermarket" },
  { chat_id: 5, user_id: 10, body: "OK!" },
  { chat_id: 6, user_id: 4, body: "I dont want to go to the cinema" },
  { chat_id: 7, user_id: 10, body: "Where r u?" },
  { chat_id: 8, user_id: 5, body: "jajajajajaja" },
  { chat_id: 9, user_id: 7, body: "lets go to eat somewhere" },
  { chat_id: 10, user_id: 2, body: "I cant because I am makeng the web t lab" }
])

