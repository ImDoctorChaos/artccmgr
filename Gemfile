# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'gon'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# use Crono for job scheduling
gem 'crono'

# Use Railsconfig for Application configuration
gem 'config'

# Use cocoon for nested jQuery forms
gem 'cocoon'

# Use Devise and Omniauth for authentication
gem 'devise'
gem 'omniauth-vatsim'

# Use Pundit for authorization
gem 'pundit'

# U2F
gem 'u2f'

# TOTP
gem 'devise-two-factor'
gem 'rqrcode-rails3'

# GPG for Mailers
gem 'gpgme'
gem 'mail-gpg'

# Use Bootstrap for the frontend
gem 'bootstrap', '~> 4.0.0.beta'
gem 'bootstrap-multiselect_rails', '~> 0.9.4'

# Use friendly_id for prettier URIs
gem 'friendly_id', '~> 5.1.0'

# Use Font Awesome for icons
gem 'font-awesome-rails'

# Use Gravatar Image Tag Plugin for displaying user images
gem 'gravatar_image_tag'

# Use Kaminari for pagination
gem 'bootstrap4-kaminari-views'
gem 'kaminari'

# Use CarrierWave/MiniMagick for image uploading
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.3'

# Use metar-parser for METAR reports
gem 'metar-parser', git: 'https://github.com/joeyates/metar-parser.git'

# Use HTTParty to consume APIs
gem 'httparty'

# Use Sinatra to fake APIs (could potentially be used in Prod demo)
gem 'sinatra'

# Use simple_calendar for events page
gem 'simple_calendar', '~> 2.0'

# Use time_difference for calculating durations
gem 'time_difference'

group :development, :test do
  # Brakeman to do static vulnerability analysis
  gem 'brakeman', '>= 4.0.1', require: false
  # Call 'byebug' anywhere in the code to stop execution and get a debug console
  gem 'byebug', platform: :mri
  # Submit test coverage reports to Coveralls during CI
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pundit-matchers', '~> 1.3.1'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop', require: false
  gem 'shoulda-callback-matchers'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :development do
  # Opens sent emails in a browser instead of mailing
  gem 'letter_opener'
  gem 'listen', '~> 3.0.5'
  # Access an IRB console on exception pages or by
  # using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in
  # the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
