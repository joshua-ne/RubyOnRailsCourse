# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.destroy_all
Profile.create! [
                    {first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "female", user_id: 1},
                    {first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "male", user_id: 2},
                    {first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "male", user_id: 3},
                    {first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "female", user_id: 4}
                ]

User.destroy_all
User.create! [
{username: "Fiorina", password_digest: "abc"},
{username: "Trump", password_digest: "abc"},
{username: "Carson", password_digest: "abc"},
{username: "Clinton", password_digest: "abc"}
]

TodoList.destroy_all
User.all.each {|p| p.todo_lists << TodoList.create(list_name: "list1",list_due_date: Date.today+1.year)}


TodoItem.destroy_all
TodoList.all.each{|p|
  for i in 0..4
    p.todo_items << TodoItem.create(title: "item1", description: "guedfsss", due_date: Date.today+1.year)
  end
}