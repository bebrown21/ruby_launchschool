require 'socket'

def parse_request(request_line)
  http_method, path_and_params, http = request_line.split(" ")
  path, params = path_and_params.split("?")
  
  params = (params || "").split("&").each_with_object({}) do |pairs, hash|
    key, value = pairs.split("=")
    hash[key] = value
  end
  
  [http_method, path, params]
end

server = TCPServer.new("localhost", 8080)
loop do
  client = server.accept
  
  request_line = client.gets
  puts request_line
  
  next unless request_line
  
  http_method, path, params = parse_request(request_line)
  
  client.puts "HTTP/1.0 200 OK"
  client.puts "Content-Type: text/html"
  client.puts
  client.puts "<html>"
  client.puts "<body>"
  client.puts "<pre>"
  client.puts http_method
  client.puts path
  client.puts params
  client.puts "</pre>"
  
  client.puts "<h1>Counter</h1>"
  
  number = params["number"].to_i
  
  client.puts "<p>The current number is #{number}.</p>"
  
  client.puts "<a href='?number=#{number + 1}'>Add One</a>"
  client.puts "<a href='?number=#{number - 1}'>Subtract One</a>"

  client.puts "</body>"
  client.puts "</html>"
  client.close
end