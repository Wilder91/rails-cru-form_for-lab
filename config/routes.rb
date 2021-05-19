Rails.application.routes.draw do
  get 'artists/:id/edit', to: 'artists#edit', as: :edit_artist
  resources :artists, only: [:index, :show, :new, :create, :update]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
