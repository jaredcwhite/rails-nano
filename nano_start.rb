args = ARGV.reject {|arg| arg == "--" }

Process.spawn("bundle exec bridgetown build -w")
Process.spawn("bundle exec puma #{args.join(' ')}")
Process.waitall
