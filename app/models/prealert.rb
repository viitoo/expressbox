class Prealert < ActiveRecord::Base
  #has_attached_file :image, styles => {large: "600x600",medium: "300x300", thumb: "150x150"}
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  mount_uploader :image ,ImageUploader
  mount_uploader :image2 ,ImageUploader
  before_save :box_number
  belongs_to :user

  def box_number
    self.box_track||=SecureRandom.random_number(99999999)
  end


  def self.search(search,current_user)
    where("(box_track LIKE ? or tracking_number LIKE ?) and user_id = ? ", "%#{search}%","%#{search}%",current_user)
    #where("tracking_number LIKE ? and user_id = ?", "%#{search}%",current_user)
  end
end
