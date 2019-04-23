Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'

end
