class PagesController < ApplicationController
  # mypageアクションだけ、ログインしていないとアクセスできないようにする（トップに弾かれる）
  before_action :authenticate_user!, only: [:mypage]

  def top
    # サインアップ・ログイン後はマイページに自動遷移する条件
    if user_signed_in?
      redirect_to mypage_path
    end
  end

  def mypage
    # ログインしているユーザの情報を画面で使うため
    @user = current_user
  end
end
