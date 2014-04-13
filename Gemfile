source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0' # WGG 4/5/2014 -- 2.12 caused bootstrap errors
gem 'pg', '0.17.1'
gem 'bcrypt-ruby', '3.1.2' # WGG 04/06/2014 -- allows us to encrypt passwords
gem 'faker', '1.1.2' # WGG 04/13/2014 -- create fake users

group :development, :test do
  gem 'rspec-rails', '2.13.1'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1' # WGG 04/07/2014 -- add test users into db
  # WGG 4/11/2014 add cucumber for testing
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'rails_12factor', '0.0.2'
end