Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "tasks#index"
  # Read(all)
  get "/tasks", to: "tasks#index", as: :tasks

  # Create(form)
  get "/tasks/new", to: "tasks#new", as: :new_task
  # Create(post)
  post "/tasks", to: "tasks#create"

  # Read(one)
  get "/tasks/:id", to: "tasks#show", as: :task

  # Update
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"

  #delete
  delete "/tasks/:id", to: "tasks#destroy"
end
