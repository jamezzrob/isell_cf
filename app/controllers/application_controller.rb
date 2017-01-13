class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD

  #before_action-> before executing any controller perfrom this action
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

# Allowing the parameter to be accepted by the devise (Similiar to params require under every controller)
=======
  #before_action-> before executing any controller perform this action
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  #Allowing the parameter to be accepted by the devise (similar to params require under every controller)
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
  end
end
