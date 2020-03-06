Rails.application.routes.draw do
  get 'bookslists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

  post 'bookslists' => 'bookslists#create'

  get 'bookslists' => 'bookslists#index'

  get 'bookslists/:id' => 'bookslists#show', as: 'bookslist'

  get 'bookslists/:id/edit' => 'bookslists#edit', as: 'edit_bookslist'

  patch 'bookslists/:id' => 'bookslists#update', as: 'update_bookslist'

  delete 'bookslists/:id' => 'bookslists#destroy', as: 'destroy_bookslist'
end
