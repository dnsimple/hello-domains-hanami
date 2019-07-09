source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.3'
gem 'hanami-model', '~> 1.3'

gem 'pg'
gem 'dnsimple'
gem 'omniauth'
gem 'omniauth-dnsimple', git: 'https://github.com/dnsimple/omniauth-dnsimple.git'

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
