source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails', '>= 5.0.0.beta1.1', '< 5.1'

gem 'warden'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'pundit'

gem 'apipie-rails'

# Primegap Gems
gem 'primegap-core', path: '../primegap-core' # github: 'primegap/primegap-core', branch: 'master'

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
  gem 'rspec-expectations', github: 'rspec/rspec-expectations', branch: 'master'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks', branch: 'master'
  gem 'rspec-support', github: 'rspec/rspec-support', branch: 'master'
  gem 'rspec-core', github: 'rspec/rspec-core', branch: 'master'
  gem 'rspec-rails', github: 'rspec/rspec-rails', branch: 'master'
end
