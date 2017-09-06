require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email "example@example.com"
    f.email_confirmation "example@example.com"
    f.password "asodm23847"
  end
end
