Rails.application.routes.draw do
    resources :posts, only: %i[show index new edit]
      namespace :admin do
    resources :stats, only: [:index]
  end
  end

  resources :posts, only: %i[index show new create edit update]


  root 'posts#index'
end
