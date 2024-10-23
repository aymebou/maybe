set :application, "maybe"

set :repo_url, "git@github.com:aymebou/maybe.git"

# Default branch is :master
# Uncomment the following line to have Capistrano ask which branch to deploy
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default value for :format is :airbrussh
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults:
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []


# Deploy to the user's home directory
set :deploy_to, "/home/deploy/applications/#{fetch :application}"

Rake::Task["deploy:assets:backup_manifest"].clear_actions


append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

# Optionally, you can symlink your database.yml and/or secrets.yml file from the shared directory during deploy
# This is useful if you don't want to use ENV variables
# append :linked_files, 'config/database.yml', 'config/secrets.yml'
