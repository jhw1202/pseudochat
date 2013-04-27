class SignupsController < ApplicationController
  def new
  end

  def create
    user = User.new(:name => params[:name], :email => params[:email], :password => params[:password])
    if user.save
      session[:user_id] = user.id
      redirect_to root_url
    else
      render :new
    end
  end
end