# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all
ListItem.destroy_all
Appointment.destroy_all
FinanceItem.destroy_all
Trip.destroy_all

user1 = User.create(name: "Cori", username: "cori", password: "cori")
user2 = User.create(name: "Adri", username: "adri", password: "adri")
user3 = User.create(name: "Udenna", username:"udenna", password: "udenna")

goal1 = Goal.create(name:"Exercise more often", start: 1, completion: 7, user_id: user1.id)
goal2 = Goal.create(name: "Sleep 7-9 hours every night", start: 2, completion: 7, user_id: user2.id)
goal3 = Goal.create(name: "Some other thing (1)", start: 3, completion: 7, user_id: user3.id)
goal4 = Goal.create(name: "Some other thing (2)", start: 3, completion: 7, user_id: user3.id)
goal5 = Goal.create(name: "Some other thing (3)", start: 3, completion: 7, user_id: user3.id)
goal6 = Goal.create(name: "Some other thing (4)", start: 3, completion: 7, user_id: user3.id)
goal7 = Goal.create(name: "Some other thing (5)", start: 3, completion: 7, user_id: user3.id)
goal8 = Goal.create(name: "Some other thing (6)", start: 3, completion: 7, user_id: user3.id)

list_item1 = ListItem.create(name: "meditate", user_id: user2.id)
list_item2 = ListItem.create(name: "walk dog", user_id: user1.id)
list_item3 = ListItem.create(name: "some other thing (1)", user_id: user3.id)
list_item4 = ListItem.create(name: "Some other thing (2)", user_id: user1.id)
list_item5 = ListItem.create(name: "Some other thing (3)", user_id: user3.id)
list_item6 = ListItem.create(name: "Some other thing (4)", user_id: user1.id)
list_item7 = ListItem.create(name: "Some other thing (5)", user_id: user3.id)
list_item8 = ListItem.create(name: "Some other thing (6)", user_id: user1.id)
list_item9 = ListItem.create(name: "Some other thing (7)", user_id: user3.id)

appointment1 = Appointment.create(name: "Doctor follow-up", date: "June 2021", time: 1, user_id: user1.id)
appointment2 = Appointment.create(name: "Veterinarian Appointment", date: "June 2021", time: 3, user_id: user2.id)
appointment3 = Appointment.create(name: "Tech Meet-Up", date: "May 2021", time: 4, user_id: user3.id)
appointment4 = Appointment.create(name: "Some other thing (1)", date: "June 2021", time: 1, user_id: user1.id)
appointment5 = Appointment.create(name: "Some other thing (2)", date: "June 2021", time: 3, user_id: user2.id)
appointment6 = Appointment.create(name: "Some other thing (3)", date: "May 2021", time: 4, user_id: user3.id)
appointment7 = Appointment.create(name: "Some other thing (4)", date: "June 2021", time: 1, user_id: user1.id)
appointment8 = Appointment.create(name: "Some other thing (5)", date: "June 2021", time: 3, user_id: user2.id)
appointment9 = Appointment.create(name: "Some other thing (6)", date: "May 2021", time: 4, user_id: user3.id)

finance_items1 = FinanceItem.create(name: "rent", amount: "$700", month: "May", user_id: user1.id)
finance_items2 = FinanceItem.create(name: "trip" , amount:"$200", month: "June", user_id: user2.id)
finance_items3 = FinanceItem.create(name: "new monitor", amount:"$700", month:"May", user_id: user3.id)
finance_items4 = FinanceItem.create(name: "Some other thing (1)", amount: "$700", month: "May", user_id: user1.id)
finance_items5 = FinanceItem.create(name: "Some other thing (2)" , amount:"$200", month: "June", user_id: user2.id)
finance_items6 = FinanceItem.create(name: "Some other thing (3)", amount:"$700", month:"May", user_id: user3.id)
finance_items7 = FinanceItem.create(name: "Some other thing (4)", amount: "$700", month: "May", user_id: user1.id)
finance_items8 = FinanceItem.create(name: "Some other thing (5)" , amount:"$200", month: "June", user_id: user2.id)
finance_items9 = FinanceItem.create(name: "Some other thing (6)", amount:"$700", month:"May", user_id: user3.id)

trip1 = Trip.create(name:"girls trip", date:"july 2021", destination:"miami", user_id: user2.id )
trip2 = Trip.create(name: "business trip", date:"may 2021", destination:"san francisco", user_id: user1.id )
trip3 = Trip.create(name:"visit family", date:"june 2021", destination:"hawaii", user_id: user3.id )
trip4 = Trip.create(name:"Some other thing (1)", date:"july 2021", destination:"miami", user_id: user2.id )
trip5 = Trip.create(name: "Some other thing (2)", date:"may 2021", destination:"san francisco", user_id: user1.id )
trip6 = Trip.create(name:"Some other thing (3)", date:"june 2021", destination:"hawaii", user_id: user3.id )
trip7 = Trip.create(name:"Some other thing (4)", date:"july 2021", destination:"miami", user_id: user2.id )
trip8 = Trip.create(name: "Some other thing (5)", date:"may 2021", destination:"san francisco", user_id: user1.id )
trip9 = Trip.create(name:"Some other thing (6)", date:"june 2021", destination:"hawaii", user_id: user3.id )



