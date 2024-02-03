class NotifierMailer < ApplicationMailer
  default to: "matthewwmjohnson@gmail.com",
    from: "contact@your-domain"

  def simple_message(name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{name}"),
      subject: "Insight Valuations -  New Inquiry from #{name}",
      body: message
    )
  end
  def sign_up_notification(email, name)
    mail(
      "reply-to": email_address_with_name(email, "#{name}"),
      subject: "Insight Valuations -  New user has registered, #{name}",
      body: "Hello Justin, \n\n Congrats a new user, #{name}, has registered at your website.\n\nBest regards,\nInsight Valuations LLC"
    )
  end

  # def send_signup_email(email, name)
  #   mail(
  #     to: email,
  #     subject: "Insight Valuations New Inquiry from #{name}",
  #     body: message
  #   )
  # end

  def send_signup_email(email, name)
    mail(
      to: email,
      subject: "Insight Valuations LLC - Thank you #{name}, you have successfully created account!",
      body: "Hello #{name},\n\nThank you for signing up, your account has been successfully created. We hope you enjoy our website and always welcome your feedback!\n\nBest regards,\nInsight Valuations LLC"
    )
  end

  def contact_form_receipt(name, email)
    mail(
      to: email,
      subject: "Insight Valuations LLC - Thank you #{name} for your message!",
      body: "Hello #{name},\n\n We are glad to hear from you! We strive to reply to all messages received in 24-48 hours. In case you do not hear back from us within two business days, please call us at (346) 554-3706.\n\nBest regards,\nInsight Valuations LLC"
    )
  end
  
end
