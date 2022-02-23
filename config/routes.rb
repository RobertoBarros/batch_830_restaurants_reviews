Rails.application.routes.draw do
  # Substitui pela rota de collection
  # get 'restaurants/top', to: 'restaurants#top'

  # Substitui pela rota de member
  # get 'restaurants/:id/chef', to: 'restaurants#chef'

  resources :restaurants do
    resources :reviews, only: %i[new create]

    get 'top', on: :collection
    get 'chef', on: :member
  end

  resources :reviews, only: :destroy




  root to: 'restaurants#index'
end
