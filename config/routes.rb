Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # get 'welcome/index'
  get 'welcome/index', to: 'welcome#index'
  get 'welcome/sum'
  resources :articles do
    resources :comments
  end
  get 'search/', to: 'articles#search'
  get 'forms/form1', to: 'forms#form1'
  root 'welcome#index'
  # get 'signup', to: 'accounts#new', as: 'signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
