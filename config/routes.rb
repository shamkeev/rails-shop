Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'products#index'

  devise_for :users

end
