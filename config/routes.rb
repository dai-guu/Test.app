Rails.application.routes.draw do

  resources :todolists
  resources :layouts
  # root to:'layouts#top'
  # get 'top' => 'homes#top'
  # get 'todolists/new'
  # post 'todolists' => 'todolists#create'
  # get 'todolists' => 'todolists#index'
  # get 'todolists/:id' => 'todolists#show',as: 'todolist'
  # get 'todolists/:id/edit' => 'todolists#edit',as: 'edit_todolist'
  # patch 'todolist/:id' => 'todolist#update',as: 'update_todolist'

end

