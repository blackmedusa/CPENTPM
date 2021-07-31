Rails.application.routes.draw do
  resources :nominees
  resources :awards
  resources :electoral_citizens
  resources :registry_citizens
  resources :nhis_citizens
  resources :dvla_citizens
  resources :all_citizens, only: %i(index)
  get 'static_pages/about'
  devise_for :users
  root "all_citizens#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
