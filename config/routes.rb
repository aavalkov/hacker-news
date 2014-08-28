Rails.application.routes.draw do
  resources :links
  resources :votes, :except =>[:delete, :edit, :update, :new, :show, :index]
  resources :comments
end
