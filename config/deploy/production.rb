set :rails_env, 'production' 

set :unicorn_pid, -> { File.join(shared_path, "tmp", "pids", "unicorn.pid") }
set :unicorn_config_path, -> { File.join(current_path, "config", "unicorn.rb") }
set :unicorn_rack_env, "production"

role :app, %w{vagrant@default}
role :web, %w{vagrant@default}
role :db,  %w{vagrant@default}

# server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value
server 'default', user: 'vagrant', roles: %w{web app db}, my_property: :my_value

# server '127.0.0.1', port: 2222, user: 'vagrant', roles: %w{web, app, db}, ssh_options: {
#   user: 'vagrant',
#   keys: %w(~/.vagrant.d/insecure_private_key),
#   auth_methods: %w(publickey)
# }

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
