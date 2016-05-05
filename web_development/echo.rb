require "socket"

server = TCPServer.new("localhost", 3003)

loop do
  client = server.accept
  client.puts "Hello"
  client.close
end