source 'https://rubygems.org'

gem 'bundler'
gem 'rake'
gem 'hanami',       '~> 0.9'
gem 'hanami-model', '~> 0.7'

gem 'sqlite3'
gem 'dnsimple'
gem 'omniauth'
gem 'omniauth-dnsimple', path: 'vendor/omniauth-dnsimple'

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
