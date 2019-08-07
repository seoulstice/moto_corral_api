require 'rails_helper'
require './lib/models/kml_parser'

RSpec.describe KMLParser, type: :model do
    it 'exists' do
        parser = KMLParser.new("https://www.google.com/maps/d/u/0/kml?mid=1Dq-upvAE94-uN4aLTgO9mKSNwbI&forcekml=1")
        expect(parser).to be_instance_of(KMLParser)
    end

    
end