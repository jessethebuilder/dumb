source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.7'

gem 'mongo', '2.8'
gem 'mongoid', '~> 7.0.5'

gem 'sidekiq'

gem 'airbrake', '~> 9.4'


gem 'rails', '~> 5.2.3'

gem 'puma', '~> 4.3'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'redis', '~> 4.0'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'figaro'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'launchy'
  gem 'sinatra'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'guard-rspec', require: false
  gem 'capybara_discoball'
  gem 'selenium-webdriver'
  gem 'vcr'
  gem 'shoulda'
  gem 'mongoid-rspec'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'webmock'
end

# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
