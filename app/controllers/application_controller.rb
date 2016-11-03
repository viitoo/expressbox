class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_filter :store_current_location, :unless => :devise_controller?
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected
  $courier = ["Aeropos","Airborne Express","Amazon Logistics","AP","China Post / International Mail","DHL / Airborne","FedEx","FedEx Freight","Lasership","Motor Freight - South Eastern","Other","Pitney Bowes","PriceSmart","SpeedBox","StratAir","Streamlite","UPS","UPS Mail Innovations","UPS Next Day","USPS","Walk-In","WN Direct","Otro"]
  $shop = ["AMAZON","EBAY","AEROPOSTALE","AMERICAN EAGLE","OTRA"]


private
def after_sign_in_path_for(resource)
  if devise_controller? && resource_name == :admin
      admins_admin_index_path
  else
      box_index_path
  end
end


def after_sign_out_path_for(resource)
  if devise_controller? && resource_name == :admin
    new_admin_session_path
  else
    new_user_session_path
  end
end


def layout_by_resource
if devise_controller? && resource_name == :admin
   "admin"
 else
   if devise_controller? && resource_name == :user
    "devise"
  end
 end
end




  def configure_permitted_parameters
    added_attrs = [:email,:name,:lastname,:dni, :password, :password_confirmation, :remember_me,:address,:phone_mobile,:phone_home,:phone_work,:country,:birth_date,:account_number,:humanizer_answer,:humanizer_question_id]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end



end
