Rails.application.routes.draw do
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

  resources :recipes, only: [:index, :update, :destroy, :show, :edit]

  root 'home#index'
end
