Rails.application.routes.draw do
  get 'bookslists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

  get 'books' => 'bookslists#index'

  get 'bookslists/:id' => 'bookslists#show', as: 'book'
  
  post 'book' => 'bookslists#create'



  get 'bookslists/:id/edit' => 'bookslists#edit', as: 'edit_book'

  patch 'bookslists/:id' => 'bookslists#update', as: 'update_book'

  delete 'bookslists/:id' => 'bookslists#destroy', as: 'destroy_book'

  root :to => 'homes#top'

end
