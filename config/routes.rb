Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: %i[index create new show]
  resources :bookmarks, only: %i[new create destroy]
end
