Rails.application.routes.draw do
  get  '/contact-us', :to => 'emails#new', :as => 'new_email'
  post '/contact-us', :to => 'emails#create', :as => 'emails'
  
  root to: 'core_pages#home'
end
