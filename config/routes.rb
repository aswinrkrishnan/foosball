Rails.application.routes.draw do
  resources :game
  root "game#index"
end
