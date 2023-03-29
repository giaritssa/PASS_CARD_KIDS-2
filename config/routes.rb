Rails.application.routes.draw do
  get 'admin/index'
  resources :responsavels
  get 'home/index'
  resources :alunos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
