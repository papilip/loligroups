require "kemal"
require "option_parser"

require "./loligroups/*"

module Loligroups
  get "/" do
    "Hello LoliGroups"
  end

  get "/api" do
    "Hello this is API"
  end
end

binding = nil
port = 0_i32
run = true

OptionParser.parse! do |parser|
  parser.banner = "Usage: loligroups [arguments]"
  # parser.on("-b", "--binding",  "Binds LoliGroups to the specified IP - defaults to '0.0.0.0'.")  { |b| binding = b }
  parser.on("-h", "--help", "Show this help") { puts parser; run = false }
  parser.on("-p", "--port", "Runs LoliGroups on the specified port - defaults to 3000.") { |p| port = p }
end

port = 3001 if port == 0

Kemal.run(3001) if run

# upcase = false
# destination = "World"

# destination = destination.upcase if upcase
# puts "Hello #{destination}!"

# Usage:
#   rails server [puma, thin etc] [options]

# Options:
#   -p, [--port=port]                        # Runs Rails on the specified port - defaults to 3000.
#   -b, [--binding=IP]                       # Binds Rails to the specified IP - defaults to 'localhost' in development and '0.0.0.0' in other environments'.
#   -c, [--config=file]                      # Uses a custom rackup configuration.
#                                            # Default: config.ru
#   -d, [--daemon], [--no-daemon]            # Runs server as a Daemon.
#   -e, [--environment=name]                 # Specifies the environment to run this server under (development/test/production).
#   -P, [--pid=PID]                          # Specifies the PID file.
#                                            # Default: tmp/pids/server.pid
#   -C, [--dev-caching], [--no-dev-caching]  # Specifies whether to perform caching in development.
