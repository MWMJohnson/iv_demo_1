class NotifierMailer < ApplicationMailer
  default to: "matthewwmjohnson@email-address",
    from: "contact@your-domain"

  def simple_message(name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{name}"),
      subject: "New contact form message from #{name}",
      body: message
    )
  end
end
