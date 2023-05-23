Rails.application.routes.draw do
  root "users#show"
  scope :api, defaults: {format: :json} do
    resources :users, only: [:index, :update]
    resources :areas
    get '/selections', to: 'selections#index'
    devise_for :users, controllers: {
      sessions: 'sessions',
      resistrations: 'resistrations',
    }
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
