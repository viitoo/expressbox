class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include Humanizer
  require_human_on :create
  validates :username,:name,:lastname,:address,:dni,:phone_mobile,:phone_home,:phone_work , presence: true
end
