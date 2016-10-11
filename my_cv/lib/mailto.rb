class Mailing
	
	attr_accessor :email, :content 

	def initialize(email:, content:)


		@email = email
		@content = content
	end
end	