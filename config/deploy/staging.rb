# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}
role :app, %w{vagrant@default}
role :web, %w{vagrant@default}
role :db,  %w{vagrant@default}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

# server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value
server 'default', user: 'vagrant', roles: %w{web app}, my_property: :my_value


# staging
# set :branch, 'master'
# role :app, %w{USER_NAME@IP_ADDRESS}
# role :web, %w{USER_NAME@IP_ADDRESS}
# role :db,  %w{USER_NAME@IP_ADDRESS}
# server 'IP_ADDRESS', user: 'USER_NAME', roles: %w{web app db}
# set :ssh_options, {
#     keys: [File.expand_path('/key/path/to/')],
#     forward_agent: true,
#     auth_methods: %w(publickey)
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
