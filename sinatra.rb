require 'sinatra'
require 'mandrill'

get '/' do
  erb :home
end

get '/home.erb' do
  erb :home
end

get '/menu.erb' do
	erb :menu
end

get '/order.erb' do
	erb :order
end

get '/reviews.erb' do
	erb :reviews
end
