class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ActiveDevice
  skip_before_filter :set_mobile_format

  def after_sign_in_path_for(admin)
    waitlist_path
  end
end
