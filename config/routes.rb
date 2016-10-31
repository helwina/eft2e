Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  get 'ressources'                       =>'pages#ressources'
  get 'missions'                         =>'pages#missions'
  get 'contact'                          =>'pages#contact'
  get 'articles'                         =>'articles#index'
  get 'articles/:title'                  =>'articles#view',as:'show_details'

end
