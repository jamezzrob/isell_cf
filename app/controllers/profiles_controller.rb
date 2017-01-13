class ProfilesController < ApplicationController
  def new
<<<<<<< HEAD
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
=======
    # Creating a new empty Profile object
    @profile = Profile.new
  end

  # Create action creates a new Profile record associated with a User
  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      # Show successful flash message and redirect to courses list
      flash[:notice] = "You have created a new profile"
      redirect_to profile_path(@profile)
    else
      # Render the new template
      render :new
    end
  end

  #GET /profile
  def index
    @profile = Profile.all
  end

  # GET /profile/1
  # GET /profile/1.json
  def show
    @profile = current_user.profile
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :biography, :picture)
  end
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea

end
