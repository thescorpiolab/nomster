class NotificationMailer < ApplicationMailer
	default from: "no-reply@yumsterapp.com"

	def comment_added
		mail(to: "tom@mrsfc.com",
			subject: "A comment has been added to your place")
	end
end
