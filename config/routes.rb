Rails.application.routes.draw do
# ======
  devise_for :users

  root to: 'user/users#top'

  namespace :user do
    resources :users, only: [:show, :edit, :update] do
      collection do
        get 'about'
      end
    end
  end

  namespace :user do
    resources :news, only: [:show, :index]
  end

  namespace :user do
    resources :questions
  end

  namespace :user do
    resources :pictures
  end

end
