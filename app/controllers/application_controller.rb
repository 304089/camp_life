class ApplicationController < ActionController::Base
  before_action :login_user
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_user
    redirect_to root_path unless current_user
  end
end
