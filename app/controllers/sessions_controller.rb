class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      login user
      flash[:notice] = "Login successful"
      redirect_to dashboard_path(user)
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    logout current_user
    redirect_to root_path, notice: "You have been logged out"
  end

end