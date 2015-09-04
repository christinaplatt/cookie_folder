require 'sinatra'
require 'mandrill'

get '/' do 
	erb :home
end

get '/menu' do
	erb :menu
end

get '/order' do
	erb :order
end

get '/reviews' do
	erb :reviews
end
