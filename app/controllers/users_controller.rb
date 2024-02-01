class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]


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

  def edit
    @user = current_user
  end

  def update
    if current_user.authenticate(params[:user][:password_challenge])
      edit_params = {}
      user_params.each do |key, value|
        if key.start_with?("edit_") && value=="1"
          edit_key = key.sub("edit_", "")
          edit_params[edit_key] = user_params[edit_key]
        end
      end
      if edit_params == {}
        flash.now[:alert] = "You must select a section(s) to be edited to save changes."
        render :edit, status: :unprocessable_entity
      else
        current_user.update!(edit_params)
        flash[:notice] = "Your changes have been saved successfully."
        redirect_to dashboard_path(current_user)
      end
    else
      flash.now[:alert] = "Please enter correct current password."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    reset_session  # Reset the session to log the user out
    redirect_to root_path, notice: "Your account has been successfully deleted"
  end

  def show
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_challenge, :edit_first_name, :edit_last_name, :edit_email)
  end
end
