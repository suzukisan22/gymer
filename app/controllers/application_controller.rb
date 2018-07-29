class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    mypage_path(current_user)
  end
end
