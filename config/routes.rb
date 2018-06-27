Rails.application.routes.draw do
  get 'codes/index'
  get 'codes/edit'
  get 'codes/new'
  get 'codes/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
