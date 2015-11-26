source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.4'
gem 'rails-api'

gem 'warden'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'pundit'

# Primegap Gems
gem 'primegap-core', github: 'primegap/primegap-core', branch: 'master'

group :production do
  gem 'puma'
  gem 'pg'
  gem 'rails_12factor' # heroku support
  gem 'newrelic_rpm'
end

group :development do
  gem 'spring'
end

group :test do
  gem 'sqlite3'
  gem 'shoulda-matchers', require: false
  gem 'codeclimate-test-reporter', require: nil
end

group :development, :test do
  gem 'rspec-rails', '~> 3.3'
end
