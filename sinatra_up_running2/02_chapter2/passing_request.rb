require 'sinatra'

before do
	content_type :txt
end

get %r{/(sp/gr)eedy} do
	pass if request.path =~ /\/speedy/
	"You got caugh in the greedy route!"
end

get '/speedy' do
	"You must have passed me!"
end