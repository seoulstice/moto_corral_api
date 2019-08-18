require 'rails_helper'

RSpec.describe Corral, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:country)}
    it {should validate_presence_of(:zip)}
    it {should validate_presence_of(:side)}
  end

  describe 'instance methods' do
    it 'creates full address from Corral attributes' do
      corral = Corral.create(address: "123 Sesame St",
                            city: "Sesame City",
                            state: "CA",
                            zip: 90210,
                            country: "United States",
                            side: "North Side")

      expect(corral.full_address).to eq("123 Sesame St, Sesame City, CA, United States")
    end
  end
end
