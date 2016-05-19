require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "pry"
require "yaml"
require "bcrypt"

configure do
  enable :sessions
  set :session_secret, 'secret'
end

before do
  @users_list = YAML.load_file("users.yml")
end

def user_signed_in?
  session.key?(:user)
end

def require_signed_in
  unless user_signed_in?
    session[:message] = "You must be signed in to do this"
    redirect "/users/signin"
  end
end

get "/" do
  @files = Dir.glob("data/*").map do |file|
    File.basename(file)
  end
  
  if session[:user]
    erb :home
  else
    redirect "users/signin"
  end
end

get "/new" do
  require_signed_in
  
  erb :new
end

get "/:file_name" do
  if File.exist? "data/#{params[:file_name]}"
    @text = File.readlines("data/#{params[:file_name]}")
  else
    session[:message] = "#{params[:file_name]} does not exist"
    redirect "/"
  end
  
  erb :files
end

get "/:file_name/edit" do
  @text = File.read("data/#{params[:file_name]}")

  erb :edit_file
end

post "/:file_name/edit" do
  File.write("data/#{params[:file_name]}", params[:content])

  session[:message] = "#{params[:file_name]} has been updated!"
  redirect "/"
end

post "/new" do
  File.write("data/#{params[:document].to_s}", "")
  session[:message] = "#{params[:document]} has been created"
  redirect "/"
end

post "/:file_name/destroy" do
  File.delete("data/#{params[:file_name]}")
  
  session[:message] = "#{params[:file_name]} has been deleted"
  redirect "/"
end

get "/users/signin" do
  
  erb :signin
end

post "/users/signin" do
  if @users_list.include?(params[:username]) #&& params[:password] == BCrypt::Password.new(@users_list[params[:username]].to_s)
    # binding.pry
    session[:user] = params[:username]
    session[:message] = "Welcome #{params[:username]}!"
    redirect "/"
  else
    session[:message] = "Invalid Creditials"
    # binding.pry
    status 422
    redirect "/users/signin"
  end
end

post "/users/signout" do
  session.delete(:user)
  session[:message] = "You have been signed out"
  redirect "/"
end
