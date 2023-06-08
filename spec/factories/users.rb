require 'faker'

FactoryBot.define do
  factory :user do
    name { 'test' }
    email { Faker::Internet.email }
    password { 'password' }
  end
end
