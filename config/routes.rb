Rails.application.routes.draw do
  # 以下、adminのルート==============
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
    resources :questions do
      resources :answers, only: [:new, :create, :show, :edit, :update, :destroy]
    end
  end

  namespace :admin do
    resources :pictures
  end


# 以下、userのルート==============
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }

  root to: 'user/users#top'

  scope module: :user do
    resources :users, only: [:show, :edit, :update] do
      collection do
        get 'about'
      end
    end
  end

  scope module: :user do
    resources :news, only: [:show, :index]
  end

  scope module: :user do
    resources :questions do
      resources :answers, only: [:new, :create, :show, :edit, :update, :destroy]
    end
  end

  scope module: :user do
    resources :pictures
  end

  scope module: :user do
    resources :searches, only: [:new, :index]
  end

end
