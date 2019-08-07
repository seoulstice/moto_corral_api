require 'rails_helper'

RSpec.describe Corral, type: :model do
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:latitude)}
    it {should validate_presence_of(:longitude)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:country)}
    it {should validate_presence_of(:zip)}
    it {should validate_presence_of(:side)}
end
