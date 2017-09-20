class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 #  before_action :authenticate_any!
	# def authenticate_any!
	#   if admin_user_signed_in?
	#     true
	#   else
	#     authenticate_user!
	#   end
	# end

end
