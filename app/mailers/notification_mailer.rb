class NotificationMailer < ApplicationMailer
  default form: "no-reply@localiapp.com"

  def comment_added
    mail(to: "my@email.com",
      subject: "A comment has been added to your place")
  end
end
