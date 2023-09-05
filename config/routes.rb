Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do 
    resources :comments
    post 'reactions', on: :member, to: 'posts_reactions#user_reaction_post', as: 'user_reaction_post'
  end

  root 'posts#index'
end
