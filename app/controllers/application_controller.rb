class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_manager, :logged_in?


  def current_manager
    #if session[:manager_id]
      @manager ||= Manager.find_by_id(session[:manager_id])
    #end
  end

  def logged_in?
    current_manager != nil
    # !!current_manager
  end

end
