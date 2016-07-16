Rails.application.routes.draw do
  resources :contents, except: [:new, :edit]
  resources :users, except: [:new, :edit]

  get 'contents/new', to: 'contents#new', as: 'new_content'
end
