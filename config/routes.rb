Rails.application.routes.draw do
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'categories#index'

  match '/contact', to: 'categories#contact', via: :get
end
