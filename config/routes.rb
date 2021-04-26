Rails.application.routes.draw do
  devise_for :users
  get 'cadence/mine'
  get 'cadence/entry'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'cadence#mine'
end
