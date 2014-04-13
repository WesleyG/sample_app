FactoryGirl.define do
  # pass :user to factory command so that FactoryGirl knows the 
  # definition is for the user object
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end	