class EmailMailer < ApplicationMailer
	def email_user(user)
		@user = user
		mail(to: @user.email, subject: "Welcome to WRLD")
	end
end
