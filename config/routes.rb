Rails.application.routes.draw do
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#index'

  match '/about', to: 'homes#about', via: :get
  match '/contact', to: 'homes#contact', via: :get
end
