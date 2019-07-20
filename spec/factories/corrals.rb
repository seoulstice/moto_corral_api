FactoryBot.define do
    factory :corral do
        address { Faker::Address.full_address }
        lat { Faker.Address.latitude }
        long { Faker.Address.longitude }
    end
end
