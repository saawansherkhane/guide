class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to log_in_path
    end
  end

end
