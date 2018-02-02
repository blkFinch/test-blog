class SessionsController < ApplicationController
  def new
  end

  def create  
    @session = Session.new(session_params)
    user = User.find_by(screen_name: params[:session][:screen_name])
    if user && user.password == @session.password
      #succesful login
    else
      flash[:danger] = 'Invalid user/password combination!'
      render 'new'
    end
  end

  def destroy
  end

  private
    def session_params
      params.require(:session)
    end


end
