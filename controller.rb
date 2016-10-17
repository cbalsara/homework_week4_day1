require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/word_formatter'
require 'json'

get '/' do
  erb(:home)
end 

 get '/address' do
   content_type(:json)
   word_formatter = WordFormatter.new
   results = { 
    address: '3 argyl house',
    building: "codebase".split('_').collect(&:capitalize).join, 
    postcode: word_formatter.upcase('e13 zqf'),
    phone: '0131558030'
   }
   results.to_json

   
 end 




