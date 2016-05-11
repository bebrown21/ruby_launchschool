require 'tilt/erubis'
require 'sinatra'
require 'sinatra/reloader'

before do
  @motorcycle_list = YAML.load_file("motorcycle.yaml")
end

not_found do
  redirect "/home"
end

get "/" do
  redirect "/home"
end

get "/home" do
  erb :home
end

get '/:make' do
  @make = params[:make].to_sym
  @model = @motorcycle_list[@make]
  erb :make
end