source 'https://rubygems.org'

# なんかだめなとき
# ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES'] = 'YES'
# gem 'rb-readline'

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
#
#   # Profile
#   gem 'newrelic_rpm'
#
#   # memcache
#   gem 'memcachier'
#   gem 'dalli'
#
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
# group :doc do
#   gem 'sdoc', require: false
# end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Server
gem 'unicorn'
# gem 'puma'
# gem 'rack-rewrite'

# Capistrano
# gem 'whenever', require: false # cronを使う場合のみ
group :deployment do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv' # rbenv の場合
  # gem 'rvm1-capistrano3', require: false # rvm の場合
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn' # unicornを使っている場合のみ
end

# gem 'bootstrap-sass'
gem 'compass-rails'
gem 'font-awesome-rails'
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
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
# gem 'omniauth-hatena'
# gem 'omniauth-linkedin'
# gem 'omniauth-mixi'

# APIs
# gem 'bugsnag'

# Helpers
# gem 'active_decorator'
# gem 'draper'
# gem 'auto_html', '~> 1.6.0', github: 'arehberg/auto_html'
# gem 'dekiru'
# gem 'rinku'
# gem 'redcarpet', '~> 3.1', github: 'vmg/redcarpet'
# gem 'rouge'
# gem 'gemoji'

# Models
# gem 'figaro'
# gem 'enumerize'
gem 'validates_email_format_of'
# gem 'unf'
# gem 'fog'
# gem 'mini_magick'
# gem 'carrierwave'
# gem 'refile'
# gem 'default_value_for'
# gem 'uuidtools'
# gem 'active_hash'

gem "non-stupid-digest-assets"
gem "dotenv-rails"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
#   gem 'spring-commands-rspec'

#   gem 'rspec', '~> 3.0'
  gem 'rspec-rails'
#   gem 'factory_girl'
  gem 'factory_girl_rails'
#   gem 'faker'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'

  gem "capybara"
  gem "selenium-webdriver"
  gem "database_cleaner"
  gem "shoulda-matchers"

  gem "teaspoon"

#   # TDD
#   gem 'brakeman'
#   gem 'delorean'
#   gem 'guard-rspec', require: false
#   gem 'json_expressions'
#   gem 'launchy'
#   gem 'poltergeist'
#   gem 'rails-db-resetup'
#   gem 'rb-fsevent', require: RUBY_PLATFORM.downcase =~ /darwin/ ? 'rb-fsevent' : false
#   gem 'minitest'
#   gem 'json_spec'

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

  # Debugs
#   gem 'bullet'
#   gem 'hirb'
#   gem 'hirb-unicode'
#   gem 'letter_opener'
#   gem 'tapp'
#   gem 'view_source_map'
#   gem 'i18n-tasks'
#   gem 'thin'

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

# APIs
# gem 'twitter', '>= 5.11.0'
# gem 'airbrake'
# gem 'hipchat'
# gem 'idobata'
# gem 'grape'
# gem 'pusher'
# gem 'em-http-request'
# gem 'garb'
# gem 'webpay'

# # Assets
# gem 'sass', '~> 3.2.0'
# gem 'inuicon-rails', '~> 0.0.7'
# gem 'asset_sync'

# # Server
# gem 'puma'
# gem 'utf8-cleaner'

# # Views
# gem 'bootstrap-sass'
# gem 'compass-rails'
# gem 'animation'
# gem 'font-awesome-rails'
# gem 'jquery-rails', '>= 3.1.2'
# gem 'jquery-ui-rails'
# gem 'jquery-cookie-rails'
# gem 'jquery-turbolinks'
# gem 'turbolinks'
# gem 'simple_form'
# gem 'yajl-ruby'

# # Javascript
# gem 'underscore-rails'
# gem 'pjax_rails'

# # background
# gem 'sidekiq'
# gem 'sinatra', require: false
# gem 'slim'

# # iOS Push Notification
# gem 'houston'

# # Google Cloud Messaging for Android
# gem 'gcm'

# # Performance
# gem 'peek'
# gem 'peek-git'
# gem 'peek-pg'
# gem 'peek-redis'
# gem 'peek-dalli'
# gem 'peek-performance_bar'
# gem 'peek-rblineprof'


# group :development do
#   # Debugs
#   gem 'web-console', '~> 2.0'
#   gem 'awesome_print'
#   gem 'better_errors'
#   gem 'binding_of_caller'
#   gem 'hirb'
#   gem 'hirb-unicode'
#   gem 'letter_opener'
#   gem 'pry-byebug'
#   gem 'pry-doc'
#   gem 'pry-rails'
#   gem 'pry-stack_explorer'
#   gem 'quiet_assets'
#   gem 'rack-mini-profiler'
#   gem 'tapp'
#   gem 'view_source_map'
#   gem 'i18n-tasks'
#   gem 'thin'
#   gem 'rubocop'
#   gem 'rails-erd', github: 'paulwittmann/rails-erd', branch: 'mavericks'
# end
# 
# group :test, :development do
#   # TDD
#   gem 'brakeman'
#   gem 'capybara'
#   gem 'database_rewinder'
#   gem 'delorean'
#   gem 'factory_girl'
#   gem 'factory_girl_rails'
#   gem 'faker'
#   gem 'guard-rspec', require: false
#   gem 'guard-sprockets2'
#   gem 'launchy'
#   gem 'nokogiri'
#   gem 'poltergeist'
#   gem 'rails-db-resetup'
#   gem 'rb-fsevent', require: RUBY_PLATFORM.downcase =~ /darwin/ ? 'rb-fsevent' : false
#   gem 'rspec', '~> 3.0'
#   gem 'rspec-rails', '~> 3.1'
#   gem 'minitest'
#   gem 'shoulda-matchers'
#   gem 'spring'
#   gem 'spring-commands-rspec'
#   gem 'transpec'
# end
# 
# group :test do
#   gem 'rspec-sidekiq', github: 'yelled3/rspec-sidekiq', branch: 'rspec3-beta'
#   gem 'json_spec'
#   gem 'vcr'
#   gem 'webmock'
# end

# -------------------------------------------------------------------------


# Put Gemfile.local to use arbitrary gems for your use case.
path = Pathname.new("Gemfile.local")
eval(path.read) if path.exist?

