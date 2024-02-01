class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    NotifierMailer.simple_message(@name, @email, @message).deliver_later
    NotifierMailer.contact_form_receipt(@name, @email).deliver_later
    flash[:notice] = "Your message has been sent successfully."
    redirect_to :new_contact_form
  end

end
