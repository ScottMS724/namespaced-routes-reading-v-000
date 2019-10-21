Rails.application.routes.draw do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]


  root 'posts#index'
end
