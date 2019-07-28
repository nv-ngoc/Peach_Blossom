# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "coffee-rails", "~> 4.2"
gem "figaro"
gem "jbuilder", "~> 2.5"
gem "mysql2", ">= 0.3.18", "< 0.6.0"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.7"
gem "rubocop", require: false
gem "sass-rails", "~> 5.0"
gem "slim-rails"
gem "uglifier", ">= 1.3.0"
gem "bootstrap", "~> 4.3.1"
gem "jquery-rails"
gem "font-awesome-sass", "~> 5.8.1"
gem "devise"

group :development, :test do
  gem "capybara", ">= 2.15"
  gem "pry-rails"
  gem "selenium-webdriver"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
