FactoryBot.define do
  factory :user do
    fullname Faker::Name.name
    username Faker::Name.name
    password_digest Faker::Internet.password
  end
end
