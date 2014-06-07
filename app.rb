require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"
require "pry"
require_relative 'models/contact'



get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do

  @contact = Contact.find(params["id"])
binding.pry
  erb :shows
end
