require 'sinatra'

get '/:name' do
	# assumes a URl in the form /some_name? foo=
	"You asked for #{params[:name]} as well as #{params[:foo]}"
end
