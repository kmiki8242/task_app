Rails.application.routes.draw do
  get 'tasks/:id/edit' => 'tasks#edit'
  root to: "tasks#index"
  resources :tasks
  resources :subtasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
