Rails.application.routes.draw do
  # Deviseのルーティング
  devise_for :users

  # トップ画面の設定
  root 'pages#top'

  # マイページ画面の設定
  get 'mypage', to: 'pages#mypage'
end
