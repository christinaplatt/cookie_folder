require 'sinatra'
require 'mandrill'

get '/' do
	erb :home
end

get '/home' do
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

get '/thanks' do
	puts "I HATE THIS"
	erb :thanks
end

post '/order' do
	puts "Params: #{params.inspect}"
	
	name = params["name"]
	email = params["email"]
	phone = params["phone"]
	message = params["text"]
	user_message = params["message"]
	
	puts "sending email!"
	send_email(name, email, phone)
	puts "GGGGGGGGGGGGGGGGGGGGGGGGDAJKSNJKASNFAS;NDFJKAS;NFJK;"
	redirect '/thanks'
end

def send_email(name, email, phone)
	
	m = Mandrill::API.new
	message = {  
		:subject=> "Hello from Cookie Time!",  
		:from_name=> "Tia, Liz, and Kayla",  
		:text=>"Hi! You need cookies?",  
		:to=>[{:email=> email, :name=> name}],  
		:html=>"<html><h1>Hi, how are you?<strong>message</strong>, how are you?</h1> Your phone number is #{phone}</html>",  
		:from_email=>"ksd44@drexel.edu"
	}  
		sending = m.messages.send message  
		puts sending
	end