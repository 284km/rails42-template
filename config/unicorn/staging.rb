@app_path = File.expand_path('../../', __FILE__)
# @tmp_path = "/tmp"
@tmp_path = "#{@app_path}/tmp"

worker_processes Integer(ENV["WEB_CONCURRENCY"] || 2)
working_directory "#{@app_path}/"

# ダウンタイムなくす
preload_app true
timeout 30

# This is where we specify the socket.
# We will point the upstream Nginx module to this socket later on
# listen 8080, :tcp_nopush => true
# listen "/tmp/unicorn.sock", :backlog => 64
listen "#{@tmp_path}/sockets/unicorn.sock", :backlog => 64

# pid "/tmp/unicorn.pid"
pid "#{@tmp_path}/pids/unicorn.pid"

# Set the path of the log files inside the log folder of the testapp
stderr_path "#{@app_path}/log/unicorn.stderr.log"
stdout_path "#{@app_path}/log/unicorn.stdout.log"

# before_exec do |server|
#   ENV["BUNDLE_GEMFILE"] = File.join(current_path, "Gemfile")
# end

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
  #
  # Throttle the master from forking too quickly by sleeping.  Due
  # to the implementation of standard Unix signal handlers, this
  # helps (but does not completely) prevent identical, repeated signals
  # from being lost when the receiving process is busy.
  # sleep 1
  sleep 1
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end


