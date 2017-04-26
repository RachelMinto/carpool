class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :admin?

  def logged_in?
    !!session[:user_id]
  end

  def admin?
    current_user.admin?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def require_user
    if !logged_in?
      flash['danger'] = "You must be logged in to do that."
      redirect_to root_path
    end
  end

  def require_admin
    if !logged_in? || !admin?
      flash['danger'] = "You must be logged in to do that."
      redirect_to root_path
    end
  end
end
