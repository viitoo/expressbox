class User < ActiveRecord::Base
  devise :database_authenticatable ,:registerable ,:recoverable ,:rememberable ,:trackable ,:validatable
  include Humanizer
  require_human_on :create
  validates :name, :lastname, :address, :dni, :phone_mobile, :phone_home, presence: true
  before_create :default_account

  def default_account
    begin
      numero = SecureRandom.random_number(9999999)
    end until !User.where(:account_number=>numero).exists?
    self.account_number||="TIB"+numero.to_s
  end

end
