class PictureImage < ApplicationRecord

  belongs_to :picture
  attachment :picture_image

end
