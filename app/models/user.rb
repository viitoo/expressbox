class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include Humanizer
  require_human_on :create
  validates :username,:name,:lastname,:address,:dni,:phone_mobile,:phone_home,:phone_work,:birth_date,:account_number , presence: true
end
