class Prealert < ActiveRecord::Base


  before_save :box_number



  def box_number
    self.box_track ||= SecureRandom.random_number(99999999999999)

  end
end
