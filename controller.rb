require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/address'
require 'json'

get '/' do
  erb(:home)
end 

 get '/address' do
   erb(:address)
 end 