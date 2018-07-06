Rails.application.routes.draw do

  resources :artworks, :only => [ :index ]
  resources :fonts, :only => [ :index ]
  resources :photos, :only => [ :index ], :path => 'portfolio'

  get  '/contact-us', :to => 'emails#new', :as => 'new_email'
  post '/contact-us', :to => 'emails#create', :as => 'emails'

  get '/about-us', :to => 'core_pages#about', :as => 'about'
  get '/order', :to => 'core_pages#order', :as => 'order'

  root to: 'core_pages#home'
end
