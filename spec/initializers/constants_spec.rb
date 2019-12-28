require "rails_helper"

RSpec.describe "Constants" do
  describe "GOOGLE_MAPS_URL" do
    it "returns url of Philadelphia Motorcycle Corrals" do
      expected_result = "https://www.google.com/maps/d/u/0/kml?mid=1Dq-upvAE94-uN4aLTgO9mKSNwbI&forcekml=1"

      expect(GOOGLE_MAPS_URL).to eq(expected_result)
    end
  end
end
