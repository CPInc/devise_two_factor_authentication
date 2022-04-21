# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in devise_ip_filter.gemspec
gemspec

rails_version = ENV['RAILS_VERSION'] || 'default'

rails = case rails_version
        when 'master'
          { github: 'rails/rails' }
        when 'default'
          '~> 7.0.1'
        else
          "~> #{rails_version}"
        end

gem 'rails', rails

if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('2.2.0')
  gem 'test-unit', '~> 3.0'
end

group :test, :development do
  gem 'pry'
  gem 'sprockets-rails'
  gem 'sqlite3'
end

group :test do
  gem 'ammeter'
  gem 'rack_session_access'
end
