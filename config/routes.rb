Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: %i[create new show] do
    resources :bookmarks, only: %i[new create]
    resources :comments, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
end
