Rails.application.routes.draw do
  get 'courses/show'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :courses, only: [:index, :show] do
    resources :recipes
  end

  resources :ingredients, only: [:index, :show] do
    resources :recipes
  end

  root 'home#index'
end
