class ApplicationController < ActionController::Base
  #include Clearance::Controller
  protect_from_forgery with: :exception

  def require_login
  	unless user_signed_in?
  		flash[:error]= "Must login"
  		redirect_to user_new_session_path
  	end
  end

end
