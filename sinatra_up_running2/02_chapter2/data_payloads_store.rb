require 'sinatra'

post '/login' do
	username = params[:username]
	password = params[:password]
end

put '/users/:id' do
	#let's assume we could retrive a USer
	u = USer.find(params[:id])
	u.first_name = params[:first_name]
	u.last_name = params[:last_name]
	u.save
end
