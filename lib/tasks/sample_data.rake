namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@kuct.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
    30.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@kuct.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end