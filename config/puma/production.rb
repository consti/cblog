directory "#{ENV['APP_DIR']}/current"
# rackup "#{ENV['APP_DIR']}/current/config.ru"
environment ENV.fetch("RAILS_ENV") { "production" }

# pidfile "#{ENV['APP_DIR']}/shared/tmp/pids/puma.pid"
# state_path "#{ENV['APP_DIR']}/shared/tmp/pids/puma.state"
# stdout_redirect "#{ENV['APP_DIR']}/shared/log/puma_access.log", "#{ENV['APP_DIR']}/shared/log/puma_error.log", true
#
# bind "unix://#{ENV['APP_DIR']}/shared/tmp/sockets/puma.sock"
port        ENV.fetch("PORT") { 3000 }

# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum; this matches the default thread size of Active Record.
#
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked webserver processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Use the `preload_app!` method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
#
# preload_app!

# If not using workers, you can use prune_bundler
#
prune_bundler

# Allow puma to be restarted by `rails restart` command.
# plugin :tmp_restart

early_hints true
