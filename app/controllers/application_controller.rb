class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #redirect user
  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      dashboard_index_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    sign_out_url = destroy_user_session_url
    if request.referer == sign_out_url
       dashboard_home_path
    else
       page_home_path
    end
  end


  #redirect admin
  def after_sign_in_path_for(resource)
    sign_in_url = new_admin_session_url
    if request.referer == sign_in_url
      beranda_home_path
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  def after_sign_out_path_for(resource)
    sign_out_url = destroy_admin_session_url
    if request.referer == sign_out_url
       beranda_home_path
    else
       page_home_path
    end
  end

end
