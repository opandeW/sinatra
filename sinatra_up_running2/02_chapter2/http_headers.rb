require 'sinatra'

before do
	content_type
end

get '/' do
	headers "X-Custom-Value" => "This is a custom http header."
	'Custom header set'
end

get '/multiple' do
	headers "X-Custom-Value" =>"foo", "X-Custom-Value-2" => "bar"
	'Mutiple custom headers set'
end

