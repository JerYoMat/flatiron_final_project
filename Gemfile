source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'
#Default ------- 
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
#----------------- 

#Added-------------- 
gem 'bcrypt', '~> 3.1.7'
gem 'jquery-rails'
gem 'popper_js', '~> 1.14', '>= 1.14.5'
gem 'bootstrap'
gem 'font-awesome-rails'
gem 'bootstrap-social-rails'
gem 'active_model_serializers'

gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'dotenv-rails'

gem 'pry'
#---------------------

group :development, :test do
  gem 'csv'
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
#Added-------------- 
  gem 'rails-controller-testing'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
 #-------------------
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do 
  gem 'pg'
end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
