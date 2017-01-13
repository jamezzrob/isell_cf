class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_profile_path
  end
<<<<<<< HEAD
=======

  
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea
end
