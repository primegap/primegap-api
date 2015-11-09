source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.4'
gem 'rails-api'
gem 'sqlite3'

gem 'warden'

# Primegap Gems
gem 'primegap-core', github: 'primegap/primegap-core', branch: 'master'

group :development do
  gem 'spring'
end

group :test do
  gem 'shoulda-matchers', require: false
  gem 'codeclimate-test-reporter', require: nil
end

group :development, :test do
  gem 'rspec-rails', '~> 3.3'
end
