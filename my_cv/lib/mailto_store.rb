require 'yaml/store'

class MailingStore

	def initialize(file_name)
		@store = YAML::Store.new(file_name)
	end
	def all
		@store.transaction do
		end
	end

	def save(mailto)
		@store.transaction do
			# p @store
			# unless mailto.id
			# 	highest_id = store.roots.max || 00
			# 	mailto.id = highest_id + 1
			# end
			@store[mailto] = mailto
		end
	end
end
