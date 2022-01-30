Rails.application.routes.draw do
  root "articles#index"

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

=begin 

resources gives the following RESTful routes (HTTP verb -> action)

GET all the posts (aka “index” the posts)
GET just one specific post (aka “show” that post)
GET the page that lets you create a new post (aka view the “new” post page)
POST the data you just filled out for a new post back to the server so it can create that post (aka “create” the post)
GET the page that lets you edit an existing post (aka view the “edit” post page)
PUT the data you just filled out to edit the post back to the server so it can actually perform the update (aka “update” the post)
DELETE one specific post by sending a delete request to the server (aka “destroy” the post)

An Example:
  get "/posts", to: "posts#index"
  get "/posts/new", to: "posts#new"
  get "/posts/:id", to: "posts#show"
  post "/posts", to: "posts#create"  # usually a submitted form
  get "/posts/:id/edit", to: "posts#edit"
  put "/posts/:id", to: "posts#update" # usually a submitted form
  delete "/posts/:id", to: "posts#destroy"
=end
