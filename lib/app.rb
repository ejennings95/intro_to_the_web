require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "This page is secret..shhhh"
end

get '/cat' do
  @cat_name = %w( Pepsi Cola Fanta).sample
  erb(:index) 
end
