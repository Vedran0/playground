Rails.application.routes.draw do

  root "converts#new"
  resources :converts, only: [:new, :create]

end
