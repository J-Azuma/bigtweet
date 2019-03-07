Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/confirm/:id', to: 'posts#confirm', as: :confirm
  resources :posts, only: [:create, :show, :edit, :update]
  root to: "posts#new"
end
