Rails.application.routes.draw do
  get "home/about" => "homes#about"
  root "homes#top"
  #get "home/top" => "homes{top"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update,]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
end
