require 'rails_helper'
require './lib/models/kml_parser'

RSpec.describe KMLParser, type: :model do
    it 'exists' do
        parser = KMLParser.new

        expect(parser).to be_instance_of(KMLParser)
    end

    
end