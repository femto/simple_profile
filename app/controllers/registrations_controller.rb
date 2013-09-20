class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params[:user].permit(:email, :password, :password_confirmation, :avatar,:avatar_cache)
  end
end
