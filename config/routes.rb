Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
  }

  namespace :admin do
    resources :users, only: [:show, :index, :edit, :update]
  end

  namespace :admin do
    resources :news
  end

  namespace :admin do
    resources :questions
  end

  namespace :admin do
    resources :pictures
  end


# ======
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }

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
