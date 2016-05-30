class UserMailer < ApplicationMailer
	def confirmation(contact)
		@contact = contact
		mail(to: @contact.email, subject: "Succussfull Mailing")
	end

end
