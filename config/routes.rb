Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index create new show] do
    resources :bookmarks, only: %i[new create]
  end

  resources :movies, only: [] do
    resources :reviews, only: %i[new create]
  end

  resources :bookmark, only: %i[destroy]
  resources :reviews, only: %i[destroy]
end
