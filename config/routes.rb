Rails.application.routes.draw do

  # get 'reviews/create'
  # get 'reviews/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
