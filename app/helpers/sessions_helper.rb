module SessionsHelper
  def log_in
    session[:user_id] = 1
  end

  def current_user
    if session[:user_id]
      @current_user = 'taketori'
    end
  end

  def logged_in?
    session[:user_id].nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
