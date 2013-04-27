require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name 'John Doe'
    email 'john@doe.com'
    password 'password'
  end
end