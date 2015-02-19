# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# require 'capistrano/console' # cap stage console とかやると便利

# require 'capistrano/rvm'
# require 'rvm1/capistrano3' # rvm の場合
require 'capistrano/rbenv'   # rbenv の場合
# require 'capistrano/chruby'

# require 'capistrano/rails' # Require everything (bundler, rails/assets and rails/migrations)
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'

require 'capistrano3/unicorn' # unicornを使っている場合
# require 'whenever/capistrano' # wheneverを使っている場合

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
