source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.1'
gem 'hanami-model', '~> 1.1'

gem 'sqlite3'
gem 'dnsimple'
gem 'omniauth'
gem 'omniauth-dnsimple', github: 'dnsimple/omniauth-dnsimple'

group :development do
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
  gem 'byebug', require: false
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'webmock'
  gem 'hanami-fabrication'
end

group :production do
  # gem 'puma'
end
