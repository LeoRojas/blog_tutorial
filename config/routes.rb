Rails.application.routes.draw do
  # get 'welcome/index'
  get 'welcome/index', to: 'welcome#index'
  get 'welcome/sum'
  resources :articles
  root 'welcome#index'
  # get 'signup', to: 'accounts#new', as: 'signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
