Rails.application.routes.draw do
  devise_for :users
  resources :decisions
  root 'decisions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
