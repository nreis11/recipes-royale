Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :courses, only: [:show] do
    resources :recipes
  end

  resources :ingredients, only: [:show] do
    resources :recipes
  end

  root 'home#index'
end
