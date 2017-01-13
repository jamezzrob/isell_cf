<<<<<<< HEAD
# encoding: utf-8

class ProfilePictureUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
    version :thumbnail do
      resize_to_fit(50, 50)
    end
=======
class ProfilePictureUploader < CarrierWave::Uploader::Base

   include Cloudinary::CarrierWave
    version :thumbnail do
  	   resize_to_fit(50, 50)
	  end
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea

end
