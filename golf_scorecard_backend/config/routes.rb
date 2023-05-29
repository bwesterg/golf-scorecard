Rails.application.routes.draw do

  resources :players
  resources :scorecards
  resources :courses do
    resources :tees
  end
end
