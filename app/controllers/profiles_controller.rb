class ProfilesController < ApplicationController
  def new
    #creating a new empty Course object
    @profile = Profile.new
  end
  def create
    @profile = current_user.build_profile(profile_params)
    #see saniterized params in server

    if @profile.save
      flash[:notice] = 'You have created a new profile'
      redirect_to root_path
      #Show successful flash message and redirect
    else
    render :new
    end
  end

  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :biography)
    end

end
