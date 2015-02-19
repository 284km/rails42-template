# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'my_app_name'
# set :repo_url, 'https://github.com/284km/rails42-template.git'
set :repo_url, 'git@github.com:284km/rails42-template.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :branch, 'master'          # Default branch is :master

set :deploy_to, '/var/www/my_app' # Default deploy_to directory is /var/www/my_app
set :scm, :git                    # Default value for :scm is :git
set :format, :pretty              # Default value for :format is :pretty
set :log_level, :debug            # Default value for :log_level is :debug
# set :log_level, :info             # Default value for :log_level is :debug
# set :user, "vagrant"

# Default value for :pty is false
# sudoに必要 これをtrueにするとssh -tで実行される
# set :pty, true

# Default value for :linked_files is []
# /shared/config/database.yml から /current/config/database.yml にシンボリックリンクを貼ってくれる
# set :linked_files, %w{config/database.yml}
set :linked_files, %w{config/database.yml config/secrets.yml}
# set :linked_files, %w{config/database.yml config/resque.yml config/settings.yml config/secrets.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
# set :linked_dirs, %w{log contrib tmp/pids tmp/cache tmp/sockets public/system public/videos node_modules bower_components}

# Default value for default_env is {}
# capistrano 用 bundle するのに必要
# set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

set :keep_releases, 5 # Default value for keep_releases is 5


# rbenv
set :rbenv_type, :user   # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.1.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value
# rvm
# set :rvm_type, :system
# set :rvm1_ruby_version, '2.1.2'

# set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

set :bundle_jobs, 4

# set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

# after 'deploy:publishing', 'deploy:restart'
# namespace :deploy do
#   task :restart do
#     invoke 'unicorn:restart'
#   end
# end

namespace :deploy do

  # desc 'Upload database.yml'
  # task :upload do
  #   on roles(:app) do |host|
  #     if test "[ ! -d #{shared_path}/config ]"
  #       execute "mkdir -p #{shared_path}/config"
  #     end
  #     upload!('config/database.yml', "#{shared_path}/config/database.yml")
  #   end
  # end

  # desc 'Create Database'
  # task :db_create do
  #   on roles(:db) do |host|
  #     with rails_env: fetch(:rails_env) do
  #       within current_path do
  #         execute :bundle, :exec, :rake, 'db:create'
  #       end
  #     end
  #   end
  # end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      invoke 'unicorn:restart'
    end
  end

  # before :starting, :upload
  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

namespace :config do
  task :setup do
    on roles(:app) do |host|
      execute :mkdir, "-p", "#{shared_path}/config"
      upload! "config/database.yml", "#{shared_path}/config/database.yml"
      # upload! "config/settings.yml", "#{shared_path}/config/settings.yml"
      upload! "config/secrets.yml", "#{shared_path}/config/secrets.yml"
    end
  end
end



