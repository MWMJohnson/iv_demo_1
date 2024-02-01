class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end
# Working Code
  # def create 
  #   @user = User.new(user_params)
  #   if @user.save
  #     flash[:success] = "Successfully created account"
  #     redirect_to dashboard_path(@user)
  #   else
  #     # render :new
  #     flash.now[:danger] = @user.errors.full_messages.uniq.to_sentence
  #     render :new, status: 422
  #   end
  # end

  #  Video Trial Code
    def create 
    @user = User.new(user_params)
    if @user.save
      login @user
      NotifierMailer.send_signup_email(@user.email, @user.first_name).deliver_later
      user_name = "#{@user.first_name}"+" "+"#{@user.last_name}"
      NotifierMailer.sign_up_notification(@user.email, user_name).deliver_later
      flash[:notice] = "Successfully created account and logged in"
      redirect_to dashboard_path(@user)
    else
      # render :new
      flash.now[:alert] = @user.errors.full_messages.uniq.to_sentence
      render :new, status: 422
    end
  end
  
  private 
  def user_params 
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end