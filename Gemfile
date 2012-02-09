source 'https://rubygems.org'

gem 'rails', '3.2.0'
gem 'mysql2'


# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'cucumber-rails', "~> 1.2.1"
  gem 'database_cleaner'
  gem 'capybara'
  gem 'rspec-rails', "~> 2.4"
  gem 'factory_girl_rails'
end

group :development do
  # required to generate factory_girl fixtures under rails 3 as of 20110518
  gem 'rails3-generators'
end

group :test do
  gem 'guard-rspec'
  gem 'spork'
  gem 'guard-spork'
end

gem 'jquery-rails'
gem 'therubyracer'
gem 'devise'
gem 'haml'
