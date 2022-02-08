require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
    "hello!"
end

get '/secret' do
  "I wish Ben would sort out his git pull's"
end

get '/names' do
  "We are the coding massive"
end
 
get '/random-cat' do  
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  # <form action = "/named-cat">
  # <input type = 'text' name = 'name'>
  # <input type = 'submit' value = 'Submit'>
  # </form>
  erb(:cat_form)
end


