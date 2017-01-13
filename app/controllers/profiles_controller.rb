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
      redirect_to profile_path(@profile)
      #Show successful flash message and redirect
    else
    render :new
    end

    def edit
    end
end
    #Get /profile
    def index
      @profile = Profile.all
  end

    def show
      @profile = current_user.profile
    end

  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :biography, :picture)
    end

end
