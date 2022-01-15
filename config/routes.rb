Rails.application.routes.draw do

  devise_for :users
  resources :todolists
  resources :layouts
  root to:'layouts#top'

  resources :groups do
    get "join" =>"groups#join"
  end
  resources :users
  # get 'top' => 'homes#top'
  # get 'todolists/new'
  # post 'todolists' => 'todolists#create'
  # get 'todolists' => 'todolists#index'
  # get 'todolists/:id' => 'todolists#show',as: 'todolist'
  # get 'todolists/:id/edit' => 'todolists#edit',as: 'edit_todolist'
  # patch 'todolist/:id' => 'todolist#update',as: 'update_todolist'

end

