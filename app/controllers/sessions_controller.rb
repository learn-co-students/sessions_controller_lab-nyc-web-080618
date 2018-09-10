class SessionsController < ApplicationController
  def new
  end


  def create

    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      #byebug
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end


  def destroy
    if session[:name]
    session.delete :name
  end
  redirect_to controller: 'application', action: 'hello'

  end

end
