require 'sinatra'

get '/redirect' do
	redirect 'http://google.com'
end

get '/redirect2' do
	redirect "http://www.google.com", 301
end
