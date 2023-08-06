Rails.application.routes.draw do

  root "mainpage#index"

  resources :heroes, param: :slug


end
