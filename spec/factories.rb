FactoryGirl.define do
  # pass :user to factory command so that FactoryGirl knows the 
  # definition is for the user object
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end