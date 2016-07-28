class Prealert < ActiveRecord::Base
  has_attached_file :image, styles => {large: "600x600",medium: "300x300", thumb: "150x150"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  before_save :box_number
  #mount_uploaders :avatars, AvatarUploader


  def box_number
    self.box_track ||= SecureRandom.random_number(99999999999999)

  end
end
