Rails.application.routes.draw do
 #resources :portfolios,except[:show]
  #get 'portfolio/:id', to: 'portfolios#show',as: 'portfolio_show'
  #get 'about_me/pages#about'
  #get 'contact/pages#contact'

  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
