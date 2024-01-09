class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # def create
  #   new_user = User.new(user_params)
  #   if new_user.save
  #     flash[:success] = "Welcome, #{new_user.first_name}!"
  #     redirect_to user_path(new_user)
  #   else
  #     # render :new
  #     flash.now[:danger] = new_user.errors.full_messages.uniq.to_sentence
  #     render :new, status: 422
  #   end
    
  # end

  # def create 
  #   @user = User.new(user_params)
  #   if @user.save
  #     flash[:success] = "Successfully created account"
  #     redirect_to user_path(@user)
  #   else
  #     # render :new
  #     flash.now[:danger] = @user.errors.full_messages.uniq.to_sentence
  #     render :new, status: 422
  #   end
  # end

  def update
  end

  def destroy
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  private
  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password)
  # end
end
