require 'sinatra'
require 'sinatra/reloader'

# Practice with Query String Params

get '/' do
  @name = params["name"]

  erb :index
end

get "/cart" do
  @item = params["item"]
  @price = params["price"]
  erb :cart
end

# Practice with Form Params

get '/items/new' do
  erb :new_item
end

post '/items' do
  @item=params["item"]
  @price = params["price"]
  erb :cart
end

get '/users/new' do
  erb :new_user
end

post '/users/new' do
  @user = params["username"]
  @password = params["psw"]
  erb :users
end
