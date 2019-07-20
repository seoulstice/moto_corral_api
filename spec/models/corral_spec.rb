require 'rails_helper'

RSpec.describe Corral, type: :model do
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:lat)}
    it {should validate_presence_of(:long)}
end
