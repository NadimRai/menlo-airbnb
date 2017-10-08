Rails.application.routes.draw do
 

  get 'rooms/index'

  get 'rooms/new'

  get 'rooms/create'

  get 'rooms/listing'

  get 'rooms/pricing'

  get 'rooms/description'

  get 'rooms/photo_upload'

  get 'rooms/amenities'

  get 'rooms/location'

  get 'rooms/update'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  root 'pages#home'
end
