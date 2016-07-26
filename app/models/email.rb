class Email < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, 	length: { maximum: 255 }, 
									format: { with: VALID_EMAIL_REGEX }, 
									uniqueness: { case_sensitive: false }

	# after_create :send_email

	def send_email
		EmailMailer.email_user(self).deliver # send email
	end
end
