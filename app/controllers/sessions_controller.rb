class SessionsController < ApplicationController
	before_filter :user_signed_in?, :only => [:delete]

  def new
  end

  def create
    if user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new, :flash => { :error => "bad email/password combination" }
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end