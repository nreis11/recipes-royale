Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes/create'

  get 'recipes/new'

  get 'recipes/edit'

  get 'recipes/show'

  get 'recipes/update'

  get 'recipes/destroy'

  get 'ingredients/index'

  get 'ingredients/show'

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
