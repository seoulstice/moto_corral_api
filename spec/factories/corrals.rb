FactoryBot.define do
    factory :corral do
        address { Faker::Address.street_address }
        latitude { Faker::Address.latitude }
        longitude { Faker::Address.longitude }
        city { Faker::Address.city }
        state { Faker::Address.state }
        country { Faker::Address.country }
        zip { Faker::Address.zip }
        side { "North Side"}
    end
end
