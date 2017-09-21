Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolio#angular'
  get 'ruby-items', to: 'portfolio#ruby_on_rails'
  get 'portfolio/:id', to: 'portfolios#show', as:'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


end
