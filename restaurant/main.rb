require 'sinatra'
require 'order'

get('/') do
	
	erb :home
end

get('/welcome/order_form') do

	erb :order_form
end

post('/welcome/make_order') do
	"Received: #{params.inspect}"

end