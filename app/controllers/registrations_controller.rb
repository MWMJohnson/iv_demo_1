class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully created account"
      redirect_to dashboard_path(@user)
    else
      # render :new
      flash.now[:danger] = @user.errors.full_messages.uniq.to_sentence
      render :new, status: 422
    end
  end
  
  private 
  def user_params 
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end