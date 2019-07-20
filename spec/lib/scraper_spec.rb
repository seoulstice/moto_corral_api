require 'rails_helper'
require './lib/models/web_scraper'

RSpec.describe WebScraper, type: :model do
    it 'exists' do
        scraper = WebScraper.new

        expect(scraper).to be_kind_of(WebScraper)
    end
end
