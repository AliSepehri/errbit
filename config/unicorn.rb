# set path to application
app_dir = File.expand_path("../..", __FILE__)
tmp_dir = "#{app_dir}/tmp"
working_directory app_dir


# Set unicorn options
worker_processes 1
preload_app true
timeout 30

# Set up socket location
listen "#{tmp_dir}/sockets/unicorn.sock", backlog: 64
#listen(3010, backlog: 64)

# Logging
stderr_path "#{app_dir}/log/unicorn.stderr.log"
stdout_path "#{app_dir}/log/unicorn.stdout.log"

# Set master PID location
pid "#{tmp_dir}/pids/unicorn.pid"

