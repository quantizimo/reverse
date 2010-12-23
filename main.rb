# I did it
# my way
require 'rubygems'
require 'sinatra'

get '/' do
  @title = "Enter your text here:"
  erb :home
end

post '/' do
  @title = "Here is your reversed text:"
  @reversed_text = params[:phrase].reverse
  erb :reverse
end

get '/:phrase' do
  @title = "Here's Your Reversed Text:"
  @reversed_text = params[:phrase].reverse
  erb :reverse
end

