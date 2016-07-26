class EmailMailer < ApplicationMailer
	default from: "WRLD <info@wrldchamp.com>"

	def email_user(user)
		@user = user
		mail(to: @user.email, subject: "Welcome to WRLD")
	end
end
