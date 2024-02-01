class PasswordResetsController < ApplicationController
  

  def new
    
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #Send Email
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    flash[:notice] = "If an account with that email was found, we have sent a link to reset your password"
    redirect_to new_session_path
  end

  def edit
    # require 'pry'; binding.pry
    @user = User.find_signed(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      flash[:alert] = "Your token has expired, please try again."
      redirect_to new_session_path
  end

  def update
    @user = User.find_signed(params[:token], purpose: "password_reset")

    if @user.update(password_params)
      flash[:notice] = "Your password was reset successfully. Please sign in."
      redirect_to new_session_path
    else
      flash.now[:alert] = @user.errors.full_messages.uniq.to_sentence
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end