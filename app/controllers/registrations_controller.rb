class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params[:user].permit(:email, :password, :password_confirmation, :avatar,:avatar_cache)
  end
  def account_update_params
    params[:user].permit(:email, :password, :password_confirmation, :current_password,:avatar,:avatar_cache)
  end
end
