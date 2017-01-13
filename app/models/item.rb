class Item < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ProfilePictureUploader
<<<<<<< HEAD

=======
>>>>>>> d3fe4a23227c3ece41399469052121332a62fbea
end
