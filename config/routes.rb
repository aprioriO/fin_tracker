Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  root 'welcome#index'
  # get '/', to: 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
end
