class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user
  
  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
  
  def authenticate_user
    unless @current_user
      flash[:notice] = "ログインして下さい。"
      redirect_to login_url
    end
  end
  
  def limitation_login_user
    if @current_user
      flash[:notice] = "すでにログイン中です。"
      redirect_to posts_index_url
    end
  end
end
