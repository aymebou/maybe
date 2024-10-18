# config/deploy/production.rb

# Server definition
server ENV["MAYBE_PRODUCTION_SERVER"], user: ENV["MAYBE_DEPLOY_USER"], roles: %w[app db web rbenv_roles]

# You can set custom ssh options
# It's recommended to use a separate SSH key for deployments
# set :ssh_options, {
#   keys: %w(~/.ssh/id_rsa),
#   forward_agent: false,
#   auth_methods: %w(publickey)
# }

# Production-specific settings
set :rails_env, "production"
set :branch, "add-capistrano"

# Uncomment if you need to set any environment variables
# set :default_env, {
#   'NODE_ENV' => 'production'
# }
