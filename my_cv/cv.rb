require 'sinatra'
require 'mailto_store'
require 'yaml/store'

store = MailingStore.new('cv.yml')

get('/cv') do
	puts store.inspect

	erb :resume
end

get('/cv/contact') do
	erb :contact
end

post('/cv/create') do
	@mailto = Mailing.new(email: params['email'], content: params['content'])
	store.save(@mailto)
	redirect '/cv'
end
