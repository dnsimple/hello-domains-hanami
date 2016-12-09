root to: 'home#index'
get '/auth/:provider/callback', to: 'sessions#create'
