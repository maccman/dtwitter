# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :password_confirmation
  
  include AuthenticatedSystem
  
  rescue_from ActiveRecord::RecordInvalid do |exception|
    responds_error_with_info(exception.record.errors)
  end
  
  rescue_from ActiveRecord::RecordNotFound do |exception|
    responds_error(404)
  end

  rescue_from RestResponses::BaseError do |exception|
    responds_error(exception.http_status)
  end  
end
