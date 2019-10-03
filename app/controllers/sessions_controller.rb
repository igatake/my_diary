class SessionsController < ApplicationController

  def new
  end

  def create
    admin = params[:session][:password]
    if admin == 'tai'
      log_in
      if !logged_in?
        redirect_to articles_path
      else
        render 'new'
      end
    else
      render 'new'
    end
    # puts params[:session][:password]
    #   console.log()
    # else
    #   redirect_to 'root_path'
    # end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
