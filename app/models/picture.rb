class Picture < ApplicationRecord

  has_many :picture_images, dependent: :destroy
  accepts_attachments_for :picture_images, attachment: :picture_image

  belongs_to :user

end
