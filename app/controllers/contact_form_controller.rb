class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    NotifierMailer.simple_message(@name, @email, @message).deliver_now
    flash[:success] = "Your message has been sent successfully."
    redirect_to :new_contact_form
  end

end
