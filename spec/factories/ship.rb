require 'faker'

FactoryBot.define do
  factory :ship do
    name { Faker::Name.unique.name }
    origin { Faker::Company.name }
    passengers_count { Faker::Number.within(range: 1..10) }
    status { :arrived }
  end
end
