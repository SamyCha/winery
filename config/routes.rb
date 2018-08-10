Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
  path: '',
  path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  resources :users, only: [:show]
  resources :rooms, except: [:edit] do
    member do
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'location'
      get 'preload'
      get 'preview'
    end
    resources :photos, only: [:create, :destroy]
    resources :reservations, only: [:create]
    resources :calendars
  end

  resources :guest_reviews, only: [:create, :destroy]
  resources :host_reviews, only: [:create, :destroy]

  get '/your_trips' => 'reservations#your_trips'
  get '/your_reservations' => 'reservations#your_reservations'

  get 'search' => 'pages#search'
get '/become_host' => 'pages#become_host'


  get 'dashboard' => 'dashboards#index'

  resources :reservations, only: [:approve, :decline] do
    member do
      post '/approve' => "reservations#approve"
      post '/decline' => "reservations#decline"
    end
  end

  resources :revenues, only: [:index]

    resources :conversations, only: [:index, :create]  do
    resources :messages, only: [:index, :create]
  end


  get '/host_calendar' => "calendars#host"
  get '/payment_method' => "users#payment"
#For Stripe Connect Use:
#  get '/payout_method' => "users#payout"
  post '/add_card' => "users#add_card"

  get '/notification_settings' => 'settings#edit'
  post '/notification_settings' => 'settings#update'

  get '/notifications' => 'notifications#index'
  get '/wine_demand' => 'pages#wine_demand'
  get '/partnership' => 'pages#partnership'
  get 'subscribe_newsletter' => 'pages#subscribe_newsletter'

  mount ActionCable.server => '/cable'

end
