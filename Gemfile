source 'https://rubygems.org'

# なんかだめなとき
ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES'] = 'YES'
gem 'rb-readline'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# gem 'mysql2'

# for heroku
# gem 'sqlite3', group: [:development, :test]
# gem 'pg', group: :production
# group :production, :staging do
#   gem 'rails_12factor'
#   gem 'newrelic_rpm'
# end


# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'compass-rails'
gem "font-awesome-rails"
# gem 'haml-rails'
gem 'slim-rails'
# gem 'simple_form'

gem 'kaminari'
# gem 'kaminari-bootstrap'

# Authentication
gem 'devise'
# gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
# gem 'omniauth-github'

# APIs
# gem 'bugsnag'

# Helpers
# gem 'active_decorator'

# Models
# gem 'figaro'
# gem 'enumerize'
# gem 'validates_email_format_of'
# gem 'unf'
# gem 'fog'
# gem 'mini_magick'

# Server
# gem 'puma'
# gem 'rack-rewrite'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem "pry-stack_explorer"

  gem "capybara"
  gem "selenium-webdriver"
  gem "database_cleaner"
  gem "shoulda-matchers"

  gem "teaspoon"
end

group :development do
  # rails c で pry が立ち上がる
  gem 'pry-rails'
  gem 'pry-doc'

  # print を見やすくするやつ
  gem 'awesome_print'
  # Source Map
  gem 'coffee-rails-source-maps'

#  rails 4 対応してない? bundle install でエラー出たからコメントアウト中
#  gem 'sass-rails-source-maps'

  # 分かり易いエラー画面
  gem 'better_errors'
  # better_errorsの画面上にirb/pry(REPL)を表示する
  gem 'binding_of_caller'

  # asset 系のログを off にしてくれる。必要なのかは試していない。
  gem 'quiet_assets'

  # スキーマ情報がmodelファイルの中でわかるようにする。
  ### bundle install したら、
  ### bundle exec annotate する。
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'

  gem 'rack-mini-profiler'
end

group :test do
  gem "autodoc"
  gem "coveralls", require: false
  gem "response_code_matchers"
  gem "rspec-json_matcher"
  gem "simplecov"
end

# gem 'rails-assets-lodash'
# gem 'rails-assets-backbone'
# gem 'rails-assets-backbone.stickit'
# gem 'rails-assets-backbone.wreqr'
# gem 'rails-assets-backbone.babysitter'
# gem 'rails-assets-marionette'


# gem "clockwork"
# gem "foreman"
# gem "puma"
# gem "redis"
# gem "resque"
# gem "weak_parameters"


# -------------------------------------------------------------------------

# group :development do
#   # Debugs
#   gem 'web-console', '~> 2.0'
#   gem 'awesome_print'
#   gem 'better_errors'
#   gem 'binding_of_caller'
#   gem 'bullet'
#   gem 'hirb'
#   gem 'hirb-unicode'
#   gem 'letter_opener'
#   gem 'pry-byebug'
#   gem 'pry-doc'
#   gem 'pry-rails'
#   gem 'pry-stack_explorer'
#   gem 'quiet_assets'
#   gem 'tapp'
#   gem 'view_source_map'
#   gem 'i18n-tasks'
#   gem 'thin'
# end
# 
# group :test, :development do
#   # TDD
#   gem 'brakeman'
#   gem 'capybara'
#   gem 'database_cleaner'
#   gem 'delorean'
#   gem 'factory_girl'
#   gem 'factory_girl_rails'
#   gem 'faker'
#   gem 'guard-rspec', require: false
#   gem 'json_expressions'
#   gem 'launchy'
#   gem 'poltergeist'
#   gem 'rails-db-resetup'
#   gem 'rb-fsevent', require: RUBY_PLATFORM.downcase =~ /darwin/ ? 'rb-fsevent' : false
#   gem 'rspec', '~> 3.0'
#   gem 'rspec-rails', '~> 3.1'
#   gem 'minitest'
#   gem 'shoulda-matchers', '2.5.0'
#   gem 'spring'
#   gem 'spring-commands-rspec'
#   gem 'json_spec'
# end






# Put Gemfile.local to use arbitrary gems for your use case.
path = Pathname.new("Gemfile.local")
eval(path.read) if path.exist?

