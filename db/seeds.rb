# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "クウガ",
             email: "kuga@email.com",
             password: "kuga2000",
             password_confirmation: "kuga2000",
             admin: true)
             
User.create!(name: '上長A',
            email: "superior-1@email.com",
            superior: true,
            password: "password",
            password_confirmation: "password"
            )
            
User.create!(name: "上長B",
            email: "superior-2@email.com",
            superior: true,
            password: "password",
            password_confirmation: "password"
            )

60.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  User.create!(name: name,
               email: email,
               password: "password",
               password_confirmation: "password"
               )
               
end
               

Base.create!(base_no: "1",
             base_name: "拠点A",
             attendance_type: "出勤")
