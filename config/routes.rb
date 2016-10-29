Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :courses, only: [:index, :show] do
    resources :recipes do
      resources :recipe_ingredients, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resources :ingredients, only: [:index, :show] do
    resources :recipes
  end

  resources :recipes, only: [:index, :update, :destroy, :show, :edit]

  root 'home#index'
end
