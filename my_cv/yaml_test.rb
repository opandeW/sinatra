require 'mailto'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_mailto = Mailing.new
first_mailto.email = "wopande@gmail.com"
first_mailto.content = "You look hot"

second_mailto = Mailing.new
second_mailto.email = "innovative.computers@live.com"
second_mailto.content = "You look hotter"

store.transaction do
	store["wopande@gmail.com"] = first_mailto
	store["innovative.computers@live.com"] = second_mailto

	p store["innovative.computers@live.com"]

end