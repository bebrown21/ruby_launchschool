require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "The Adventure of Sherlock Holmes"
  @contents = File.readlines("data/toc.txt")
  @chapter = FIle.read("data/chp1.text")
  
  erb :home
end
