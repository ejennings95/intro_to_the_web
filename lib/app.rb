require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "This page is secret..shhhh"
end

get '/random-cat' do
  @cat_name = %w( Pepsi Cola Fanta).sample
  erb(:index)
end

get '/cat-form' do
  erb(:index)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end
