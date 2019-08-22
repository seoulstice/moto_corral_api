FactoryBot.define do
  factory :corral do
    address { Faker::Address.street_address }
    latitude { 39.8960671 }
    longitude { -75.2054374 }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
    zip { Faker::Address.zip }
    side { "North Side"}
  end
end
