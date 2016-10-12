#Routes with Parameters
#Routes in Sinatra can also accept parametres that are exposed via the params array

require 'sinatra'

get '/:name' do
	"Hello, #{params[:name]}!"
end