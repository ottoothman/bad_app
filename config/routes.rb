Rails.application.routes.draw do
  devise_for :users
  resources :decisions
  root to: 'decisions#index'
  post "/join_group" => "decision_groups#join", as: "group"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
