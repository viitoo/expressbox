class Prealert < ActiveRecord::Base
  #has_attached_file :image, styles => {large: "600x600",medium: "300x300", thumb: "150x150"}
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  mount_uploader :image ,ImageUploader
  mount_uploader :image2 ,ImageUploader
  before_create :box_number
  belongs_to :user

  def box_number
    begin
      numero = SecureRandom.random_number(9999999)
    end until !User.where(:account_number=>numero).exists?
    self.box_track||=numero.to_s
  end

  def self.search(search,current_user)
    where("(box_track LIKE ? or tracking_number LIKE ?) and user_id = ? ", "%#{search}%","%#{search}%",current_user)
  end

  
  def name
    file.path.split("/").last
  end

end
