# This defines a task db:populate that creates an example user
# with name and email address replicating our previous one, 
# and then makes 99 more.

namespace :db do
  desc "Fill database with sample data"
  # ensures that the Rake task has access to the local 
  # Rails environment, including the User model 
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end