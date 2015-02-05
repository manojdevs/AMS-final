Rails.application.routes.draw do
  devise_for :users,:skip => [:sessions, :registrations]
  as :user do
  get 'signin' => 'devise/sessions#new', :as => :new_user_session
  get 'signup' => 'devise/registrations#new', :as => :new_user_registration
  post 'signup' => 'devise/registrations#create', :as => :user_registration
  post 'signin' => 'devise/sessions#create', :as => :user_session
  delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  root :to => 'main#index'
  as :apt do
  get 'addaptdet' => 'apt#new',  :as => :new_apt
  get 'index' => 'apt#index',  :as => :apt_index
  post 'insert' => 'apt#create'
  get 'aptview' => 'apt#show'
  get 'aptedit' => 'apt#edit'
  patch 'aptupdate' => 'apt#update'
  get 'getflat' => 'flat#new'
  get 'flats' => 'flat#index'
  get 'flatview.:id' => 'flat#show', :as => :flat
  post 'flatadd' => 'flat#create'
  get  'editflat' => 'flat#edit'
  patch 'udtflat' => 'flat#update'
end
end
