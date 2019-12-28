require "rails_helper"

RSpec.describe KmlParser, type: :model do
  it "exists" do
    parser = KmlParser.new(GOOGLE_MAPS_URL)

    expect(parser).to be_instance_of(KmlParser)
  end
end
