source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "bootsnap", require: false
gem "pg"
gem "puma", ">= 3.12.2"
gem "rails", "~> 5.2.4"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara"
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker"
  gem "geocoder"
  gem "geokit-rails"
  gem "launchy"
  gem "nokogiri"
  gem "pry"
  gem "rspec-rails"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "shoulda-matchers"
end

group :development do
  gem "listen"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
