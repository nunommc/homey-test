Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :feed, controller: :messages
  end

  root to: redirect(path: '/projects', status: 302)
end
