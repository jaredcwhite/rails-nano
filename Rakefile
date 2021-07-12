require "rake"

namespace :nano do
  desc "Boot up both the Bridgetown watcher and Puma/Rack"
  task :start do
    args = ARGV[1..].reject {|arg| arg == "--" }

    trap("SIGINT") do
      puts "- Stopping Bridgetown & Puma"
    end

    Process.spawn("bundle exec bridgetown build -w")
    Process.spawn("bundle exec puma #{args.join(' ')}")
    Process.waitall
  end
end
