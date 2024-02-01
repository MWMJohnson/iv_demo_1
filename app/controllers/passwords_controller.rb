class PasswordsController < ApplicationController
  before_action :authenticate_user!

  def edit

  end

  def update
    if current_user.authenticate(params[:user][:password_challenge])
      if current_user.update(password_params)
        flash[:notice] = "Your password has been updated successfully."
        redirect_to dashboard_path(current_user)
      else
        flash.now[:alert] = current_user.errors.full_messages.uniq.to_sentence
        render :edit, status: :unprocessable_entity
      end
    else
      flash.now[:alert] = "Please enter correct current password."
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(
      :password,
      :password_confirmation)
  end
end