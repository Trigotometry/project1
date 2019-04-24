class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to topics_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path # Send them back to try again.
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
