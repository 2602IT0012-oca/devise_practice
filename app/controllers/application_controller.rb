class ApplicationController < ActionController::Base
  # position: ログイン・サインアップ時にnameの保存を許可する
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # サインアップ（新規登録）時にnameカラムを許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # アカウント更新時にnameカラムを許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
